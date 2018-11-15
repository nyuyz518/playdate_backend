class User < ApplicationRecord
  has_many :reviews, :dependent => :delete_all
  has_many :likes, :dependent => :delete_all
  has_many :gos, :dependent => :delete_all
  has_many :events, through: :reviews
  has_many :events, through: :likes
  has_many :events, through: :gos
end
