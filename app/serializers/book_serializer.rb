class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :author, :tag_list, :cover_image, :review_ids

  has_one :latest_borrow
end
