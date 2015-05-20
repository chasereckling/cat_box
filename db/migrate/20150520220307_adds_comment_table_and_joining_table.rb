class AddsCommentTableAndJoiningTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
    end

    create_table :cats_comments, id: false do |t|
      t.belongs_to :cats, index: true
      t.belongs_to :comments, index: true
    end
  end
end
