class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :author

  has_one :latest_borrow
end
