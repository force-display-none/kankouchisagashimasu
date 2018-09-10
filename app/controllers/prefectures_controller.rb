class PrefecturesController < ApplicationController

  def index
  end

  def show
  end

    private

    def prefecture_params
      params.require(:prefecture).permit(:name, :region_id, :deleted_at)
    end

end
