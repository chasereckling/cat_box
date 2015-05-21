class RenameImageColumn < ActiveRecord::Migration
  def change
    remove_column(:photos, :image)
    add_column(:photos, :profile_image, :string)
  end
end
