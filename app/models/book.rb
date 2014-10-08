class Book < ActiveRecord::Base
  validates :title, presence: true

  has_many :borrows

  def is_checked_out
    borrows.where(finished_on: nil).any?
  end
end
