class Event < ApplicationRecord
  has_many :reviews
  has_many :likes
  has_many :gos
  has_many :tags
  has_many :users, through: :reviews
  has_many :users, through: :likes
  has_many :users, through: :gos

end
