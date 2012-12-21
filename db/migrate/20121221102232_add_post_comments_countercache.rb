class AddPostCommentsCountercache < ActiveRecord::Migration
   def up
  	add_column :posts, :comments_count, :integer, :default => 0

  	Post.find_each do |post|
      post.update_attribute(:comments_count, post.comments.count)
      post.save
    end
  end

  def down
  	 remove_column :posts, :votes_count
  end
end
