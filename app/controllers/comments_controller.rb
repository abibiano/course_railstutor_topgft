class CommentsController < ApplicationController
	def new
		@comment = Comment.new
		@post = Post.where(slug: params[:post_id]).first
	end

	def create
		@comment = Comment.new(params[:comment])
		@comment.post = Post.where(slug: params[:post_id]).first
		if @comment.save 
			redirect_to @comment.post, notice: 'New comment was succesfully saved'
		else
			render action: "new"
		end
	end
end