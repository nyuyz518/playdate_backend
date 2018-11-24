class LocationSerializer < ActiveModel::Serializer
  attributes :coordinates, :address
end
