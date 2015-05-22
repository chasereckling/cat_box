class AddTimestampsToComments < ActiveRecord::Migration
  def change
    drop_table(:comments)

    create_table(:comments) do |t|
      t.column(:cat_id, :int)
      t.column(:comment_photo, :string)
      t.column(:description, :text)

      t.timestamps
    end
  end
end
