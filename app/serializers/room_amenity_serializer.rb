class RoomAmenitySerializer < ActiveModel::Serializer
  attributes :id
  has_one :room
  has_one :amenity
end
