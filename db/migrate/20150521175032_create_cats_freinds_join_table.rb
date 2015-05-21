class CreateCatsFreindsJoinTable < ActiveRecord::Migration
  def change
    create_table(:cats_friends, id: false) do |t|
      t.integer :cat_id
      t.integer :friend_id
    end
    add_index :cats_friends, :cat_id
    add_index :cats_friends, :friend_id
  end
end
