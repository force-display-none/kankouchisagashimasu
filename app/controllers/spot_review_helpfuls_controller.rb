class SpotReviewHelpfulsController < ApplicationController

  def create
  	spot_review = SpotReview.find(params[:spot_review_id])
    spot_review_helpful = current_user.spot_review_helpfuls.new(spot_review_id: spot_review.id)
    spot_review_helpful.save
    redirect_to spot_path(spot_review.spot)
  end

  def destroy
  	spot_review = SpotReview.find(params[:spot_review_id])
    spot_review_helpful = current_user.spot_review_helpfuls.find_by(spot_review_id: spot_review.id)
    spot_review_helpful.destroy
    redirect_to spot_path(spot_review.spot)
  end

	private

	def spot_review_helpful_params
	  params.require(:spot_review_helpful).permit(:spot_review_id, :user_id)
	end

end
