module PostsHelper
	def display_url_link(post)
		
		if post.url =~ /^https?:\/\//
			link_to post.title, post.url
		else
			link_to post.title, "http://" + post.url
		end
	end

end