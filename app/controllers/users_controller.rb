class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new
		@user.username = params[:user][:username]
		@user.password = params[:user][:password]
		if @user.save
			session[:user_id] = @user.id
			redirect_to root_path, notice: 'User was succesfully created'
		else
			render "new"
		end
	end
end