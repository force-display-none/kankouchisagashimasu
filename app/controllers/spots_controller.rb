class SpotsController < ApplicationController

  def new
  end

  def create
  end

  def show
  end

  def show_reviews
  end

  def edit
  end

  def update
  end

  def destroy
  end

    private

    def spot_params
    	params.require(:spot).permit(:name, :area_id, :s_spot_genre_id, :description, :short_description,
    	                             :period, :location, :path, :latitude, :longitude, :deleted_at)
    end

end
