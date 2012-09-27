class RestaurantsController < ApplicationController
  
  def index
		@restaurants = Restaurant.find :all, :order => :"name"
	end
	
  def show
    @restaurant = Restaurant.find(params[:id])
    @items = @restaurant.items.order("name")
    @cart = find_cart
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    if @restaurant.save
      redirect_to @restaurant
    else
      render :action => 'new'
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update_attributes(params[:restaurant])
      redirect_to @restaurant, :notice  => "Successfully updated restaurant."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_url, :notice => "Successfully destroyed restaurant."
  end
  
  ##################
  # Custom Methods #
  ##################
  
  def add_to_cart
    @restaurant = Restaurant.find params[:restaurant_id]
    item = Item.find params[:id]
    @cart = find_cart
    @cart.add_product(item)
  end

  #def add_to_order
    #@restaurant = params[:restaurant_id]
    #item = Item.find(params[:id])
    #@order = Order.find_or_create_by_restaurant_id params[:restaurant_id]
    #@cart.add_item(item)
  #rescue ActiveRecord::RecordNotFound
    #logger.error("Attempt to access invalid product #{params[:id]}")
    #flash[:notice] = "Invalid product"
    #redirect_to restaurant_path(:id => @restaurant)
  #end
  
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
