class AddVotesCount < ActiveRecord::Migration
  def up
  	add_column :posts, :votes_count, :integer, :default => 0

  	Post.find_each do |post|
      post.update_attribute(:votes_count, post.votes.count)
      post.save
    end
  end

  def down
  	 remove_column :posts, :votes_count
  end
end
