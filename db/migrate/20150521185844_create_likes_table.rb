class CreateLikesTable < ActiveRecord::Migration
  def change
    create_table(:likes) do |t|
      t.column(:name, :string)
      t.column(:image, :string)
    end
    create_table(:cats_likes) do |t|
      t.belongs_to :cat, index: true
      t.belongs_to :like, index: true
    end
  end
end
