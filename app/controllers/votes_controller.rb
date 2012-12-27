class VotesController < ApplicationController
	def create
		post = Post.find_by_slug(params[:post_id])
		post.votes.create(direction: params[:direction])
		redirect_to root_path			
	end
end