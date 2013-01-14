class User < ActiveRecord::Base
	attr_accessible :username, :password_digest, :password
	has_secure_password

	has_many :comments
	has_many :posts

	validates :username, presence: true
end