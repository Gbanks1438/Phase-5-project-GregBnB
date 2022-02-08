class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :property

  validates :num_guests, :start_date, :end_date, :user_id, :property_id, presence: true
  validates :start_date, :end_date, uniqueness: true
  # validates :num_guests, numericality: { in: 1..12 } #NOT WORKING
end
