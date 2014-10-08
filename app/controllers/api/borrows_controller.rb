class Api::BorrowsController < ApplicationController
  def create
    borrow = Borrow.create(borrow_params)

    render json: borrow
  end

  def update
  end

  private
  def borrow_params
    params.require(:borrow).permit(:user_id, :book_id, :started_on)
  end
end
