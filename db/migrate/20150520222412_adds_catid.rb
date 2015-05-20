class AddsCatid < ActiveRecord::Migration
  def change
    add_column(:comments, :cat_id, :int)
  end
end
