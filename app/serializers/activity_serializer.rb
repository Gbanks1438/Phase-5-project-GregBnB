class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :url, :location
  has_one :property
end
