class RegionsController < ApplicationController

  def index
  	@regions = Region.all
    if params[:id].present?
  	  region = Region.find(params[:id])
  	  # if region.id == 1 || region.id == 10
  	  #   prefecture = region.prefectures.first
     #    redirect_to areas_path(prefecture, id: prefecture.id)
  	  # end
    end
  end

  def show
  end

    private

    def region_params
      params.require(:region).permit(:name, :deleted_at,
      	                              prefectures_attributes: [:id, :name, :deleted_at, :_destroy])
    end

end
