class CategoriesController < ApplicationController
	def show
		@category = Category.where(slug: params[:id]).first
		@posts = []
		if !@category.nil?
			@posts = @category.posts.sort_by { |post| [post.vote_number, post.created_at] }.reverse
		end
	end
end