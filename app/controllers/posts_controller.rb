class PostsController < ApplicationController
	def index
		@posts = Post.find(:all, order: "id DESC")

		respond_to do |format|
			format.html # index.html.erb
		end
	end

	def show
		@post = Post.where(slug: params[:id]).first

		respond_to do |format|
			format.html # show.html.erb
		end		
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