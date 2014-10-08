class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :author, :is_checked_out
end
