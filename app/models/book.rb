class Book < ActiveRecord::Base
  validates :title, presence: true
  has_one :latest_borrow, -> { where finished_on: nil }, class_name: 'Borrow'
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  has_many :reviews, dependent: :destroy

  def tag_list
    # map i.o. pluck to avoid extra queries.
    tags.map(&:name).join(", ")
  end

  def tag_list=(names)
    self.tags = String(names).split(",").map do |n|
      Tag.find_or_initialize_by(name: n.strip.downcase)
    end
  end
end
