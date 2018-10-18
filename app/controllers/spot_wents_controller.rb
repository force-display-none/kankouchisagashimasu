class SpotWentsController < ApplicationController

  def create
  	@spot = Spot.find(params[:spot_id])
    @spot_went = current_user.spot_wents.new(spot_id: @spot.id)
    @spot_went.save
    @spot_wants = current_user.spot_wants.where(spot_id: @spot.id)
    @spot_review = SpotReview.new
    if !@spot_wants.nil?
      @spot_wants.delete_all
    end
    if params[:user_id]
      redirect_to user_path(current_user)
    else
      @spot.reload
      respond_to do |format|
        format.html { render @spot, @spot_review }
        format.js
      end
    end
  end

  def destroy
  	@spot = Spot.find(params[:spot_id])
  	if current_user.spot_wents.where(spot_id: @spot.id).count == 1
      @spot_went = current_user.spot_wents.find_by(spot_id: @spot.id)
      @spot_went.destroy
    else
      @spot_wents = current_user.spot_wents.where(spot_id: @spot.id)
      @spot_wents.delete_all
    end
    if params[:user_id]
      redirect_to user_path(current_user)
    else
      @spot.reload
      respond_to do |format|
        format.html { render @spot }
        format.js
      end
    end
  end

	private

	def spot_went_params
	  params.require(:spot_went).permit(:spot_id, :user_id, :went, :want)
	end

end
