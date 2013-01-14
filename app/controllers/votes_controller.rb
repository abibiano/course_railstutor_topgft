class VotesController < ApplicationController
	before_filter :require_user, only: [:create]

	def create
		post = Post.where(slug: params[:post_id]).first
		post.votes.create(direction: params[:direction])
		redirect_to root_path			
	end
end