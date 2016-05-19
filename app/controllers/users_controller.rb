class UsersController < ApplicationController


  def show
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :photo, :photo_cache)
  end
end
