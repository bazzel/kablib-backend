class Api::ReviewsController < ApplicationController
  def show
    render json: Review.find(params[:id])
  end

  def create
    review = Review.new(review_params)

    if review.save
      render json: review
    else
      render json: { errors: review.errors }, status: :unprocessable_entity
    end

  end

  private
  def review_params
    params.require(:review).permit(:description, :like, :book_id, :user_id)
  end
end
