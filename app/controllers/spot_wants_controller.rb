class SpotWantsController < ApplicationController

  def create
  end

  def destroy
  end

	private

	def spot_want_params
	  params.require(:spot_want).permit(:spot_id, :user_id)
	end

end