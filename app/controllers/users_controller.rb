class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new
		@user.username = params[:user][:username]
		@user.password = params[:user][:password]
		@user.twitter_handle = params[:user][:twitter_handle]
		if @user.save
			session[:user_id] = @user.id
			redirect_to root_path, notice: 'User was succesfully created'
		else
			render "new"
		end
	end

	def show
		@user = User.where(slug: params[:id]).first
		@last_posts = @user.posts.limit(10).order('created_at asc')
		@last_comments = @user.comments.limit(10).order('created_at asc')
		@last_votes = @user.votes.limit(10).order('created_at asc')
	end
end