class Restaurant < ActiveRecord::Base
  attr_accessible :name, :description, :address, :phone, :minimum_charge
  has_many :orders
  has_many :items
  accepts_nested_attributes_for :items

  #Set of validations
  validates_presence_of :address, :phone
  validates_uniqueness_of :name, :phone
  validates_numericality_of :minimum_charge

  def find_cart
    session[:cart] ||= Cart.new
  end
end
