require 'faker'

FactoryGirl.define do
	factory :user do
		username "testuser"
		password "1234"
	end
end