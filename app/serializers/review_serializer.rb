class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :review, :created_at
  has_one :property
  has_one :user
end
