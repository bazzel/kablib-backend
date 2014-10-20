class BorrowSerializer < ActiveModel::Serializer
  attributes :id, :started_on, :finished_on, :user_id
end
