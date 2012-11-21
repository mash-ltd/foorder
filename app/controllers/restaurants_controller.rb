class RestaurantsController < ApplicationController
  
  before_filter :empty_cart, only: :show
  
  def index
		@restaurants = Restaurant.find :all, order: "name"
	end
	
  def show
    @restaurant = Restaurant.find(params[:id])
    @active_items = @restaurant.items.where(active_state: true).order("name")
    @cart = find_cart
    @inactive_items = @restaurant.items.where(active_state: false).order("name")
    @new_item = Item.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    if @restaurant.save
      redirect_to @restaurant
    else
      render action: 'new'
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(params[:restaurant])
      redirect_to @restaurant, :notice  => "Successfully updated #{@restaurant.name}."
    else
      render action: 'edit'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_url, notice: "Successfully destroyed restaurant."
  end
  
  ##################
  # Custom Methods #
  ##################
  
  def add_to_cart
    @restaurant = Restaurant.find params[:restaurant_id]
    @item = Item.find params[:id]
    @cart = find_cart
    @current_item = @cart.add_product(@item)
  end

  def subtract_from_cart
    @restaurant = Restaurant.find params[:restaurant_id]
    @item = Item.find params[:id]
    @cart = find_cart
    @current_item = @cart.subtract_product(@item)
    respond_to do |format|
      format.js { render :add_to_cart }
    end
  end

  def add_to_order
    @cart = find_cart
    if @cart.items.present?
      @open_order = Order.where order_status: "open", restaurant_id: params[:restaurant_id]
      if @open_order.empty?
        @open_order = Order.new user_id: current_user.id, order_status: "open", restaurant_id: params[:restaurant_id]
        @open_order.save
      end
      @open_order = Order.where order_status: "open", restaurant_id: params[:restaurant_id]
      @cart.items.each do |item|
        OrderItem.create order_id: @open_order.first.id, item_id: item.id, item_quantity: item.quantity, user_id: current_user.id
      end
      redirect_to order_path(@open_order.first)
    else
      redirect_to root_path, alert: "Your cart is empty; No items were added"
    end
  end

  def empty_cart
    session[:cart] = nil
    @cart = find_cart
  end
  
  ###################
	# Private Methods #
	###################
	
  private
	
  def find_cart
    session[:cart] ||= Cart.new
  end
end
