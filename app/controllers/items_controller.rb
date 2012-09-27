class ItemsController < ApplicationController

  def new
    @item = Item.new
    @restaurant = Restaurant.find params[:restaurant_id]
  end

  def create
    @item = Item.new(params[:item])
    @item.restaurant_id = params[:restaurant_id]
    if @item.save
      redirect_to restaurant_path(:id => params[:restaurant_id]), :notice => "Successfully created item."
    else
      @restaurant = Restaurant.find params[:restaurant_id]
      render :action => 'new'
    end
  end

  def edit
    @item = Item.find(params[:id])
    @restaurant = Restaurant.find params[:restaurant_id]
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(params[:item])
      redirect_to restaurant_path(:id => params[:restaurant_id]), :notice  => "Successfully updated item."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to restaurant_path(:id => params[:restaurant_id]), :notice => "Successfully destroyed item."
  end
end