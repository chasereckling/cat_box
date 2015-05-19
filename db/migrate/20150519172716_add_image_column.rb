class AddImageColumn < ActiveRecord::Migration
  def change
    add_column(:cats, :image, :varchar)
  end
end
