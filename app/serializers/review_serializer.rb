class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :rating, :user_id, :created_at
end
