class SpotWentsController < ApplicationController

  def create
  end

  def destroy
  end

	private

	def spot_went_params
	  params.require(:spot_went).permit(:spot_id, :user_id)
	end

end
