class VotesController < ApplicationController
	before_filter :require_user, only: [:create]

	def create
		post = Post.where(slug: params[:post_id]).first
		vote = post.votes.create(direction: params[:direction])
		vote.user = current_user
		if vote.save
			redirect_to root_path, notice: 'Vote was succesfully computed'
		else
			flash[:error] = "Error on voting."
			redirect_to root_path	
		end		
	end
end