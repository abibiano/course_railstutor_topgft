class User < ActiveRecord::Base
	attr_accessible :username, :password_digest, :password
	has_secure_password

	validates :username, presence: true
end