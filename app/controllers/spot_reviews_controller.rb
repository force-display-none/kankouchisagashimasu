class SpotReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    spot = Spot.find(params[:spot_id])
    went = SpotWent.find_by(user_id: current_user.id, spot_id: spot.id)
    if went.nil?
      flash[:alert] = "\uf071 行っていない観光地のレビューは投稿できません"
      redirect_to spot_path(spot) and return
    end
    spot_review = SpotReview.new(spot_review_params)
    spot_review.spot_id = spot.id
    spot_review.user_id = current_user.id
    if spot_review.save
      if spot_review.season < spot_review.created_at
        redirect_to spot_path(spot)
      else
        spot_review.destroy
        flash[:alert] = "\uf071 行った時期が未来になっていたためレビューは投稿出来ませんでした"
        redirect_to spot_path(spot)
      end
    else
      flash[:alert] = "\uf071 投稿内容に不備があったためレビューは投稿出来ませんでした"
      redirect_to spot_path(spot)
    end
  end

  def index
  end

  def update
    spot_review = SpotReview.find(params[:id])
    if spot_review.user.id == current_user.id
      spot_review.update(spot_review_params)
    end
    redirect_to user_path(current_user)
  end

  def destroy
    spot_review = SpotReview.find(params[:id])
    if spot_review.user.id == current_user.id
      spot_review.destroy
    end
    redirect_to user_path(current_user)
  end

    private

    def spot_review_params
    	params.require(:spot_review).permit(:title, :body, :season, :fellow_travelers,
    	               :public, :spot_id, :user_id,
                      spot_review_images_attributes: [ :id, :image, :_destory ])
    end

end
