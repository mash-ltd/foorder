class Item < ActiveRecord::Base
  attr_accessible :name, :description, :price
  belongs_to :restaurant
  has_many :order_items

  #Set of validations
  validates_presence_of :name, :price
  validates_numericality_of :price
  validate :price_more_than_zero

  ###################################################################
  private #Methods which cannot be accessed from outside this model #
  ###################################################################
  
  def price_more_than_zero
  	errors.add(:price, 'should be more than 0') if price.nil? || price < 0.01
  end
end