class Order < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :user
	has_many :order_items

  attr_accessible :restaurant_id, :order_item_id, :order_status, :user_id
end