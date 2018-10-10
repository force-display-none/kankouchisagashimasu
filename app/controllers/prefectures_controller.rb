class PrefecturesController < ApplicationController

  def index
  	@prefectures = Prefecture.all
    if user_signed_in?
      if session[:url]
        redirect_to session[:url] and return
      end
    end
  end

  def show
  end

  def search
  	prefecture = Prefecture.find(params[:id])
  	# .offset( rand(prefecture.areas.count) ).firstでランダムにレコードを一件取得しています
    area = prefecture.areas.offset( rand(prefecture.areas.count) ).first
    # 取得したareaがspotを持っていないと例外が発生するのでspotを持ったareaを取得するまで繰り返します
    i = 0
    while area.spots.count == 0 do
      area = prefecture.areas.offset( rand(prefecture.areas.count) ).first
      i += 1
      if i > 50
      	redirect_to areas_path(prefecture, id: prefecture.id) and return
      end
    end
  	spot = area.spots.offset( rand(area.spots.count) ).first
  	redirect_to spot_path(spot)
  end

    private

    def prefecture_params
      params.require(:prefecture).permit(:name, :region_id, :deleted_at)
    end

end
