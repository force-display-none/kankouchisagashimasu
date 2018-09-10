class SpotReviewsController < ApplicationController

  def create
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
    	               :public, :spot_id, :user_id)
    end

end
