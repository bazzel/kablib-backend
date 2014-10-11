class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :author, :tag_list

  has_one :latest_borrow
end
