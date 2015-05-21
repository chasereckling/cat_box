class FriendsTable < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
  end
    create_table :cats_friends, id: false do |t|
      t.belongs_to :cats, index: true
      t.belongs_to :friends, index: true
    end
  end
end
