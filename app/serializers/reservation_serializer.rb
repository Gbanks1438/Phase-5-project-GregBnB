class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :num_guests, :start_date, :end_date
  has_one :user
  has_one :property
end
