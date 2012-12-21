class Vote < ActiveRecord::Base
  attr_accessible :post_id

  belongs_to :post, counter_cache: true
end
