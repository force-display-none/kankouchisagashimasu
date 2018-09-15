class SpotWantsController < ApplicationController

  def create
  	spot = Spot.find(params[:spot_id])
    spot_want = current_user.spot_wants.new(spot_id: spot.id)
    spot_want.save
    redirect_to spot_path(spot)
  end

  def destroy
  	spot = Spot.find(params[:spot_id])
  	spot_want = current_user.spot_wants.find_by(spot_id: spot.id)
    spot_want.destroy
    redirect_to spot_path(spot)
  end

	private

	def spot_want_params
	  params.require(:spot_want).permit(:spot_id, :user_id)
	end

end