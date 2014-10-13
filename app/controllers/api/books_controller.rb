class Api::BooksController < ApplicationController
  def index
    render json: Book.includes(:latest_borrow, :tags).all
  end

  def show
    render json: Book.find(params[:id])
  end

  def create
    book = Book.new(book_params)

    if book.save
      render json: book
    else
      render json: { errors: book.errors }, status: :unprocessable_entity
    end

  end

  def update
    book = Book.find(params[:id])

    if book.update(book_params)
      render json: book
    else
      render json: { errors: book.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    Book.find(params[:id]).destroy

    head 204
  end

  private
  def book_params
    params.require(:book).permit(:title, :description, :author, :tag_list)
  end
end
