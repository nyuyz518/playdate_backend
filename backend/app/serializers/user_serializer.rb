class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest

  has_many :reviews
  has_many :likes
  has_many :gos
  has_many :events, through: :reviews
  has_many :events, through: :likes
  has_many :events, through: :gos
end
