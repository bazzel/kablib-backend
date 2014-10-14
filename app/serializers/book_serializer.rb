class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :author, :tag_list, :cover_image

  has_one :latest_borrow
end
