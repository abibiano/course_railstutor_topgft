class AddVotesDirections < ActiveRecord::Migration
  def change
  	add_column :votes, :direction, :string
  	remove_column :comments, :votes_count

  end
end
