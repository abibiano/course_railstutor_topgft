require 'faker'

FactoryGirl.define do
	factory :post do
		title { Faker::Company.name }
		url { Faker::Internet.url }
	end
end