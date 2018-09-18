class AreasController < ApplicationController

  def show
  	@area = Area.find(params[:id])
    @q = @area.spots.ransack(params[:q])
    @spots = @q.result(distinct: true)
    @s_spot_genres = SSpotGenre.all
    if params[:q].present?
      @q = @area.spots.search(search_params)
      @spots = @q.result(distinct: true)
      if @spots.count == 0
        @spots = @area.spots
        flash.now[:result] = "ヒットしませんでした。検索方法を変えてみて下さい。"
        render 'show' and return
      end
      if @spots.count != @area.spots.count
        flash.now[:result] = "#{@spots.count}件ヒットしました"
      end
      render 'show' and return
    end
  end

  def index
  	@prefecture = Prefecture.find(params[:id])
  end

    private

    def area_params
      params.require(:area).permit(:name, :prefecture_id, :deleted_at)
    end

    def search_params
      params.require(:q).permit!
    end
end
