class Vote < ActiveRecord::Base
  attr_accessible :direction

  belongs_to :post
  belongs_to :user

  after_save :update_counter_cache
  after_destroy :update_counter_cache
  

  def update_counter_cache
  	puts "Hello, logs!"
    self.post.votes_count = Vote.where("direction = 'up' AND post_id = ?", self.post_id).count - Vote.where("direction = 'down' AND post_id = ?", self.post_id).count
    puts Vote.where("direction = 'up' AND post_id = ?", self.post_id).count.to_s
    puts self.post.votes_count.to_s
    self.post.save
  end
end
