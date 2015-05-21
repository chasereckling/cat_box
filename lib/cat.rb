class Cat < ActiveRecord::Base
  validates_presence_of(:name)
  has_many(:comments)
  has_and_belongs_to_many(:likes)
end
