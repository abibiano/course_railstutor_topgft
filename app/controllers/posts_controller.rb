class PostsController < ApplicationController
	before_filter :require_user, only: [:new, :create]

	def index
		@posts = Post.all.sort_by { |post| [post.vote_number, post.created_at] }.reverse
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