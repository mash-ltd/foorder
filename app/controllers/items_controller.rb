class ItemsController < ApplicationController

  def create
    @new_item = Item.new(params[:item])
    @new_item.restaurant_id = params[:restaurant_id]
    respond_to do |format|
      if @new_item.save
        format.html {redirect_to restaurant_path(:id => params[:restaurant_id]), :notice => "Successfully created item." }
        format.js { render :close_add_item }
      else
        format.js
      end
    end
  end

  def edit
    @item = Item.find params[:id]
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

