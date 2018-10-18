class SpotReviewImagesController < ApplicationController

  def create
  end

  def index
  end

  def admin_index
  end

  def destroy
  end

    private

    def spot_review_image_params
    	params.require(:spot_review_image).permit(:spot_review_id, :image_id)
    end

end
