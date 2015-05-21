class CreateTableCatFriends < ActiveRecord::Migration
  def change
    create_table "cat_friends", :force => true, :id => false do |t|
      t.integer "cat_id_1", :null => false
      t.integer "cat_id_2", :null => false
    end
  end
end
