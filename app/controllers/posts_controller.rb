class PostsController < ApplicationController
	def index
		@posts = Post.all

		respond_to do |format|
			format.html # index.html.erb
		end

	end
end