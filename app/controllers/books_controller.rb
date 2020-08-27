class BooksController < ApplicationController
  before_action :move_to_index, except: [:index]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    if @book.save
      redirect_to book_path(@book), notice: "保存しました"
    else
      render :new
    end
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :page, :publisher, :started_at, :finished_at)
  end
end
