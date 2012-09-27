class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :order_items
  
  # Setup accessible (or protected) attributes for your model. Added by Devise
  attr_accessible :email, :password, :password_confirmation, :remember_me
  #Added by Alaa
  attr_accessible :role, :username, :first_name, :last_name
  validates_presence_of :username, :first_name, :last_name
  validates_uniqueness_of :username
  # attr_accessible :title, :body
	#
	# Roles Model options and view drop down menu
	#
	# ROLES = %w[user admin]
	#	<p>
  #   <%= f.label :role %>
  #   <%= f.collection_select :role, User::ROLES, :to_s, :humanize %>
  # </p>
end
