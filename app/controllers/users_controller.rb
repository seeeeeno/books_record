class UsersController < ApplicationController
  def index
    @books = Book.where(user_id: current_user.id).order("started_at DESC")
    @user = current_user
  end

  def show
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path(@user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profileimage)
  end
end
