class UsersController < ApplicationController
	def index
		@users = User.order(:username).where("username LIKE ?", "%#{params[:query]}%")
		render json: @users.map(&:username)
	end
end
