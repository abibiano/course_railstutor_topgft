class PostsController < ApplicationController
	def index
		@posts = Post.all.sort_by { |post| post.vote_number }.reverse
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
		if @post.save 
			redirect_to root_path, notice: 'New gift was succesfully saved'
		else
			render action: "new"
		end
	end

end