class OrdersController < ApplicationController
	def index
		@open_orders = Order.where order_status: "open"
	end
end