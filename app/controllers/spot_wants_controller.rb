class SpotWantsController < ApplicationController

  def create
  	@spot = Spot.find(params[:spot_id])
    @spot_want = current_user.spot_wants.new(spot_id: @spot.id)
    @spot_want.save
    # redirect_to spot_path(@spot)
    @spot.reload
    respond_to do |format|
      format.html { render @spot }
      format.js
    end
  end

  def destroy
  	@spot = Spot.find(params[:spot_id])
    if current_user.spot_wants.where(spot_id: @spot.id).count == 1
  	  @spot_want = current_user.spot_wants.find_by(spot_id: @spot.id)
      @spot_want.destroy
    else
      @spot_wants = current_user.spot_wants.where(spot_id: @spot.id)
      @spot_wants.delete_all
    end
    if params[:user_id]
      redirect_to user_path(current_user)
    else
    # redirect_to spot_path(@spot)
      @spot.reload
      respond_to do |format|
        format.html { render @spot }
        format.js
      end
    end
  end

	private

	def spot_want_params
	  params.require(:spot_want).permit(:spot_id, :user_id)
	end

end