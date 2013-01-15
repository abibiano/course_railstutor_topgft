class AddCategories < ActiveRecord::Migration
  def change
  	remove_column :posts, :votes_count

  	add_column :posts, :category_id, :integer

  	create_table :categories do |t|
      t.string 	:name

      t.timestamps
    end
  end
end
