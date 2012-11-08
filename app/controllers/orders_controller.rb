class OrdersController < ApplicationController
  
  def index
    @open_orders = Order.where order_status: "open"
  end

  def show
    @order = Order.find params[:id]
    @order_items = OrderItem.all conditions: ["order_id = ?", @order.id], :select => 'item_id, user_id, SUM(item_quantity) as item_quantity', :group => 'item_id'
    @total_price = 0
    @order_items.each do |item|
      @total_price += Item.find(item.item_id).price * item.item_quantity
    end
    @user_items = OrderItem.all conditions: ["order_id = ?", @order.id], :select => 'item_id, user_id, SUM(item_quantity) as item_quantity', :group => 'item_id, user_id', order: 'user_id'
    @username = ""
    @user_total = 0
    @user_total_hash = {}

  end

  def close_order
    @order = Order.find params[:id]
    @order.update_attribute(:order_status, "closed") unless @order.order_status == "closed"
    redirect_to @order
  end
  
end