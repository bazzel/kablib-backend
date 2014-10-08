class Api::BooksController < ApplicationController
  def index
    render json: Book.all
  end

  def show
    render json: Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])

    if book.update(book_params)
      render json: book
    else
      render json: { errors: book.errors }, status: :unprocessable_entity
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :description, :author)
  end
end
