class PropertySerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :img_url, :has_cell_reception
  has_many :reservations
  # has_many :rooms 
end
