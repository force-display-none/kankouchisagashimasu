class SpotReviewHelpfulsController < ApplicationController

  def create
  end

  def destory
  end

	private

	def spot_review_helpful_params
	  params.require(:spot_review_helpful).permit(:spot_review_id, :user_id)
	end

end
