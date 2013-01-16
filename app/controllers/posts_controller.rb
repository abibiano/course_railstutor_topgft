class PostsController < ApplicationController
	before_filter :require_user, only: [:new, :create]

	def index		
		@posts = Post.order('votes_count DESC, created_at DESC').page(params[:page])		
	end

	def show
		@post = Post.where(slug: params[:id]).first
		@comment = Comment.new
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post])
		@post.user = current_user
		if @post.save 
			redirect_to root_path, notice: 'New gift was succesfully saved'
		else
			render "new"
		end
	end

end