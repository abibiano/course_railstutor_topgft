class CommentsController < ApplicationController
	def create
		@comment = Comment.new(params[:comment])
		@comment.post = Post.where(slug: params[:post_id]).first
		if @comment.save 
			redirect_to @comment.post, notice: 'New comment was succesfully saved'
		else
			@post = @comment.post
			render 'posts/show'
		end
	end
end