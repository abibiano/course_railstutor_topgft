class AddVotesCount < ActiveRecord::Migration
  def up
  	add_column :posts, :votes_count, :integer, :default => 0

    Post.reset_column_information
    Post.find_each do |post|
      Post.reset_counters post.id, :votes
    end
  end

  def down
  	 remove_column :posts, :votes_count
  end
end
