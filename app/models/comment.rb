class Comment < ActiveRecord::Base
  attr_accessible :content

  belongs_to :post, counter_cache: true
  belongs_to :user

	validates :content, presence: true
	validates :content, length: { minimum: 2 }

end
