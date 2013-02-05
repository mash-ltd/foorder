class Restaurant < ActiveRecord::Base

  has_many :orders
  has_many :items
  belongs_to :manager, class_name: "User", foreign_key: :manager_id  # Assigns the restaurant to a manager
  accepts_nested_attributes_for :items

  attr_accessible :name, :description, :address, :phone, :minimum_charge, :manager_id, :username
  
  # Carrierwave restaurant logo fields
  attr_accessible :logo, :remote_logo_url, :remove_logo

  # 
  mount_uploader :logo, LogoUploader

  #Set of validations
  validates_presence_of :name, :address, :phone
  validates_uniqueness_of :name, :phone
  validates_numericality_of :minimum_charge, if: :minimum_charge

  def find_cart
    session[:cart] ||= Cart.new
  end

  def username
    manager.try(:username)
  end

  def username=(username)
    if username.present?
      self.manager = User.find_by_username(username)
    else
      self.manager = nil
    end
  end
end
