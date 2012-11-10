class UsersController < ApplicationController
	def index
		@users = User.order(:username).where("username LIKE ?", "%#{params[:term]}%")
		render json: @users.map(&:username)
	end
end
