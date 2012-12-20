class CommentsController < ApplicationController
	def create
		@comment = Comment.new(params[:comment])
		@comment.post = Post.find_by_slug(params[:post_id])
		if @comment.save 
			redirect_to @comment.post, notice: 'New comment was succesfully saved'
		else
			render action: "new"
		end
	end
end