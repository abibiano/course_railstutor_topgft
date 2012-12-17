class CommentsController < ApplicationController
	def new
		@comment = Comment.new
		@post = Post.find(params[:post_id])
	end

	def create
		@comment = Comment.new(params[:comment])
		@comment.post_id = params[:post_id]
		if @comment.save 
			redirect_to @comment.post, notice: 'New comment was succesfully saved'
		else
			render action: "new"
		end
	end
end