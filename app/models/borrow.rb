class Borrow < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  before_create :ensure_started_on

  private
  def ensure_started_on
    self.started_on ||= Date.today
  end
end
