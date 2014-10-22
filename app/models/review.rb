class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  validates :user, presence: true
  validates :book, presence: true
  #validates :description, presence: true
  validates :like, inclusion: { in: [true, false] }
end
