class VotesController < ApplicationController
	def create
		@vote = Vote.new()
		@vote.post = Post.find_by_slug(params[:post_id])
		@vote.save 
		redirect_to root_path			
	end

	def destroy
		Vote.find(params[:id]).destroy  
    redirect_to root_path
	end
end