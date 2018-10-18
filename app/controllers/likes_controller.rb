class LikesController < ApplicationController

  def create
  end

  def destory
  end

	private

	def like_params
	  params.require(:like).permit(:spot_review_image_id, :user_id)
	end

end
