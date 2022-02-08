class RoomSerializer < ActiveModel::Serializer
  attributes :id, :room_num, :floor_num, :num_of_beds, :bed_size, :img_url, :room_type, :location
  has_one :property
end
