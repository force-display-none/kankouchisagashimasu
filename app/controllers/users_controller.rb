class UsersController < ApplicationController
  before_action :authenticate_user!, only: [ :show, :index, :update, :destroy]

  def sign_up_top
    if user_signed_in?
      redirect_to root_path, alert: "既にログインしています。"
    end
  end

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

  def my_like_images
  end

  def index
    redirect_to new_user_registration_url
  end

  def admin_edit
  end

  def update
    user = current_user
    if user.update(user_params)
      flash[:notice] = "登録情報を更新しました"
      redirect_to user_path(user)
    else
      flash[:alert] = "\uf071 登録情報に不備があったため更新できませんでした"
      redirect_to user_path(user)
    end
  end

  def destroy
    user = current_user
    user.destroy
    redirect_to root_path
  end

    private

    def user_params
    	params.require(:user).permit(:name, :nickname, :gender, :age, :email,
    	                             :password, :management, :deleted_at)
    end

end
