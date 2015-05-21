class AddsPhotoOptionToComments < ActiveRecord::Migration
  def change
    add_column(:comments, :comment_photo, :string)
  end
end
