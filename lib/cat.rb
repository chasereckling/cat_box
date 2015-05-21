class Cat < ActiveRecord::Base
  validates_presence_of(:name)
  has_many(:comments)
  has_and_belongs_to_many(:cats,
  :join_table => "cat_friends",
  :foreign_key => "cat_id_1",
  :association_foreign_key => "cat_id_2")
end
