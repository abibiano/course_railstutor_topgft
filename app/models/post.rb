class Post < ActiveRecord::Base
	attr_accessible :url, :title

	has_many :comments
	has_many :votes

	before_create :generate_slug

	def to_param
		slug
	end

	def generate_slug
		if self.title_changed?
			if Post.where(:slug => self.title.parameterize).count > 0
				n = 1
				while Post.where(:slug => "#{self.title.parameterize}-#{n}").count > 0
				  n += 1
				end
				self.slug = "#{self.title.parameterize}-#{n}"
			else
				self.slug = self.title.parameterize
			end
		end
	end
end