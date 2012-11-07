class OrderItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :item
  belongs_to :order

  attr_accessible :order_id, :item_id, :item_quantity, :user_id

  validates :order_id, presence: true
  validates :item_id, presence: true
  validates :item_quantity, presence: true
  validates :user_id, presence: true

end