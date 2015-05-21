class DeleteCatFriendsTable < ActiveRecord::Migration
  def change
    drop_table(:cat_friends)



  end
end
