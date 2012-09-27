class OrdersController < ApplicationController
	def index
		@open_orders = Order.where order_status: "open"
	end

	def show
		@order = Order.find params[:id]
		@order_items = @order.order_items.map(&:item_id).inject(Hash.new(0)) { |h,e| h[e] += 1; h}
		@order_total = 0
	end

	def close_order
		@order = Order.find params[:id]
	end

end