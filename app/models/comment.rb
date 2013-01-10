class Comment < ActiveRecord::Base
  attr_accessible :content

  belongs_to :post, counter_cache: true

	validates :content, presence: true
	validates :content, length: { minimum: 2 }

end
