class Cat < ActiveRecord::Base
  validates_presence_of(:name)
  has_many(:comments)

  # A cat can have many:
  #
  # friends in its capacity as frienders
  # frienders in its capacity as friend


  has_many :friend_friendings, foreign_key: :friender_id, class_name: “Friending”
  has_many :friends, through: :friend_friendings, source: :friend

  has_many :friender_friendings, foreign_key: :friend_id, class_name: “Friending”
  has_many :frienders, through: :friender_friendings, source: :friender
end
