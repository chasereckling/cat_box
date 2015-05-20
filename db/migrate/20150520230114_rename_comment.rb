class RenameComment < ActiveRecord::Migration
  def change
    remove_column(:comments, :comment)
    add_column(:comments, :description, :text)
  end
end
