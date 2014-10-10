class Book < ActiveRecord::Base
  validates :title, presence: true
  has_one :latest_borrow, -> { where finished_on: nil }, class_name: 'Borrow'
end
