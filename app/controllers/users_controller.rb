class UsersController < ApplicationController

  def show
  end

  def my_reviews
  end

  def my_helpfuls
  end

  def my_like_images
  end

  def index
  end

  def admin_edit
  end

  def edit
  end

  def update
  end

  def destroy
  end

    private

    def user_params
    	params.require(:user).permit(:name, :nickname, :gender, :age, :email,
    	                             :password, :management, :deleted_at)
    end

end
