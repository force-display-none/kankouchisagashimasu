class SpotReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    spot = Spot.find(params[:spot_id])
    spot_review = SpotReview.new(spot_review_params)
    spot_review.spot_id = spot.id
    spot_review.user_id = current_user.id
    spot_review.save!
    redirect_to spot_path(spot_review.spot)
  end

  def index
  end

  def update
  end

  def destroy
  end

    private

    def spot_review_params
    	params.require(:spot_review).permit(:title, :body, :season, :fellow_travelers,
    	               :public, :spot_id, :user_id,
                      spot_review_images_attributes: [ :id, :image, :_destory ])
    end

end
