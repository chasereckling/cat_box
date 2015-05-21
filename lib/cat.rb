class Cat < ActiveRecord::Base
  validates_presence_of(:name)
  has_many(:comments)
  has_many(:photos)
end
