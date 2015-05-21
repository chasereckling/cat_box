class AddsPhotosTable < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image
      t.integer :cat_id
    end
  end
end
