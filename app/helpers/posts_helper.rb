module PostsHelper
	def display_url_link(post)
		
		if post.url =~ /^https?:\/\//
			return link_to post.title, post.url
		else
			return link_to post.title, "http://" + post.url
		end
	end
end