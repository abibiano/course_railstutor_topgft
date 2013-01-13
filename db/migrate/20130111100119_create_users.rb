class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :password_digest
  		t.string :username

  		t.timestamp
  	end

  end
end
