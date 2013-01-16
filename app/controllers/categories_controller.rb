class CategoriesController < ApplicationController
	def show
		@category = Category.where(slug: params[:id]).first
		@posts = []
		if !@category.nil?			
			@posts = @category.posts.order('votes_count DESC, created_at DESC').page(params[:page])
		end
	end
end