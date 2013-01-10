class Vote < ActiveRecord::Base
  attr_accessible :direction

  belongs_to :post
end
