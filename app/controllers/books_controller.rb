class BooksController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @books = Book.order("created_at DESC").first(10)
    # @books.each do |book|
    #   @user = User.where(id: book.user_id)
    # end
  end

  def search
    @books = Book.search(params[:keyword]).order("created_at DESC")
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    if @book.save
      redirect_to users_path(@book), notice: "保存しました"
    else
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render :edit
    end
  end

  def destroy
    @book = Book.destroy(params[:id])
    if @book.destroy
      redirect_to users_path
    else
      render :show
    end
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :author, :page, :publisher, :started_at, :finished_at, :impression).merge(user_id: current_user.id)
  end
end
