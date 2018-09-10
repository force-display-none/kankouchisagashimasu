class SpotImagesController < ApplicationController

  def create
  end

  def index
  end

  def admin_index
  end

  def destroy
  end

    private

    def spot_image_params
    	params.require(:spot_image).permit(:spot_id, :image_id)
    end

end
