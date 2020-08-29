class UsersController < ApplicationController
  def index
    @books = Book.where(user_id: current_user.id).order("started_at DESC")
  end

  def show
  end
end
