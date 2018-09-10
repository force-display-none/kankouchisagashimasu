class RegionsController < ApplicationController

  def index
  end

  def show
  end

    private

    def region_params
      params.require(:region).permit(:name, :deleted_at)
    end

end
