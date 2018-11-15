class Event < ApplicationRecord
  has_many :reviews, :dependent => :delete_all
  has_many :likes, :dependent => :delete_all
  has_many :gos, :dependent => :delete_all
  has_many :tags, :dependent => :delete_all
  has_many :users, through: :reviews
  has_many :users, through: :likes
  has_many :users, through: :gos

end
