class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    user = User.find(params[:id])
    if user.id != current_user.id
      redirect_to user_path(current_user)
    end
    @user = current_user
    @spot_wants = @user.spot_wants
    @spot_wents = @user.spot_wents
    @spot_reviews = @user.spot_reviews
    @spot_review_helpfuls = @user.spot_review_helpfuls
  end

  def my_reviews
  end

  def my_helpfuls
  end

  def my_like_images
  end

  def index
    redirect_to new_user_registration_url
  end

  def admin_edit
  end

  def edit
  end

  def update
    user = current_user
    user.update!(user_params)
    redirect_to user_path(user)
  end

  def destroy
    user = current_user
    user.destory
    redirect_to root_path
  end

    private

    def user_params
    	params.require(:user).permit(:name, :nickname, :gender, :age, :email,
    	                             :password, :management, :deleted_at)
    end

end
