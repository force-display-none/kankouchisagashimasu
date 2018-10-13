class SpotReviewHelpfulsController < ApplicationController

  def create
    @i = params[:helpful_id]
  	@spot_review = SpotReview.find(params[:spot_review_id])
    @spot_review_helpful = current_user.spot_review_helpfuls.new(spot_review_id: @spot_review.id)
    @spot_review_helpful.save
    # redirect_to spot_path(@spot_review.spot)
    @spot_review.reload
    respond_to do |format|
      format.html { render @spot_review, @i }
      format.js
    end
  end

  def destroy
    @i = params[:helpful_id]
  	@spot_review = SpotReview.find(params[:spot_review_id])
    if current_user.spot_review_helpfuls.where(spot_review_id: @spot_review.id).count == 1
      @spot_review_helpful = current_user.spot_review_helpfuls.find_by(spot_review_id: @spot_review.id)
      @spot_review_helpful.destroy
    else
      @spot_review_helpfuls = current_user.spot_review_helpfuls.where(spot_review_id: @spot_review.id)
      @spot_review_helpfuls.delete_all
    end
    # redirect_to spot_path(@spot_review.spot)
    if params[:user_id]
      redirect_to user_path(current_user)
    else
      @spot_review.reload
      respond_to do |format|
        format.html { render @spot_review, @i }
        format.js
      end
    end
  end

	private

	def spot_review_helpful_params
	  params.require(:spot_review_helpful).permit(:spot_review_id, :user_id)
	end

end
