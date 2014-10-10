class Api::BorrowsController < ApplicationController
  def show
    render json: Borrow.find(params[:id])
  end

  def create
    borrow = Borrow.create(borrow_params)

    render json: borrow
  end

  def update
    borrow = Borrow.find(params[:id])

    if borrow.update(borrow_params)
      render json: borrow
    else
      render json: { errors: borrow.errors }, status: :unprocessable_entity
    end
  end

  private
  def borrow_params
    params.require(:borrow).permit(:user_id, :book_id, :started_on, :finished_on)
  end
end
