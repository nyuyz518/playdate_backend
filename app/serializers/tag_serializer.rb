class TagSerializer < ActiveModel::Serializer
  attributes :id, :tag

  belongs_to :event
end
