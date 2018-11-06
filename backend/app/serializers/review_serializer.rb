class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :review, :rating
  
  belongs_to :user
  belongs_to :event
end
