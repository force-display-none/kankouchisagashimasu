class AreasController < ApplicationController

  def show
  	@area = Area.find(params[:id])
  end

  def index
  	@prefecture = Prefecture.find(params[:id])
  end

    private

    def area_params
      params.require(:area).permit(:name, :prefecture_id, :deleted_at)
    end

end
