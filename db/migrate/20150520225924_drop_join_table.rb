class DropJoinTable < ActiveRecord::Migration
  def change
    drop_table(:cats_comments)
  end
end
