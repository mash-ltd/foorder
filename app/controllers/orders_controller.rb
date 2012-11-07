class OrdersController < ApplicationController
  
  def index
    @open_orders = Order.where order_status: "open"
  end

  def show
    @order = Order.find params[:id]
    @order_items = OrderItem.all conditions: ["order_id = ?", @order.id], :select => 'item_id, user_id, SUM(item_quantity) as item_quantity', :group => 'item_id'
    @order_total = 0
  end

  def close_order
    @order = Order.find params[:id]
    @order.update_attribute(:order_status, "closed") unless @order.order_status == "closed"
    redirect_to @order
  end
  
end