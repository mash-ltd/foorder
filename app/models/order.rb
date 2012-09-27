class Order < ActiveRecord::Base
	belongs_to :restaurant
	has_many :order_items

  attr_accessible :restaurant_id, :order_item_id
end