class Category < ActiveRecord::Base
	attr_accessible :name

	has_many :posts

	def to_param
		slug
	end

	def generate_slug
		self.slug = self.name.parameterize	
	end
end