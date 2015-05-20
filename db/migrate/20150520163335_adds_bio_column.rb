class AddsBioColumn < ActiveRecord::Migration
  def change
    add_column(:cats, :bio, :text)
  end
end
