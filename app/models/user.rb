class User < ActiveRecord::Base
	has_secure_password

	has_many :comments
	has_many :posts
	has_many :votes

	before_create :generate_slug

	validates :username, presence: true

	def to_param
		slug
	end

	def generate_slug
		self.slug = self.username.parameterize		
	end

end