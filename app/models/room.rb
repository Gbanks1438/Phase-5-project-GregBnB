class Room < ApplicationRecord
  belongs_to :property
  has_many :room_amenities
  has_many :amenities, through: :room_amenities
end
