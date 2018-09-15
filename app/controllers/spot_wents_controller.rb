class SpotWentsController < ApplicationController

  def create
  	spot = Spot.find(params[:spot_id])
    spot_went = current_user.spot_wents.new(spot_id: spot.id)
    spot_went.save
    spot_want = current_user.spot_wants.find_by(spot_id: spot.id)
    unless spot_want.nil?
      spot_want.destroy
    end
    redirect_to spot_path(spot)
  end

  def destroy
  	spot = Spot.find(params[:spot_id])
  	spot_went = current_user.spot_wents.find_by(spot_id: spot.id)
    spot_went.destroy
    redirect_to spot_path(spot)
  end

	private

	def spot_went_params
	  params.require(:spot_went).permit(:spot_id, :user_id, :went, :want)
	end

end
