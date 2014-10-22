class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :like, :user_id, :created_at
end
