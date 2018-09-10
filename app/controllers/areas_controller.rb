class AreasController < ApplicationController

  def index
  end

  def show
  end

    private

    def area_params
      params.require(:area).permit(:name, :prefecture_id, :deleted_at)
    end

end
