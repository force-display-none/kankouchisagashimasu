class SpotsController < ApplicationController

  def new
    @spot = Spot.new
    @spot_image = @spot.spot_images.build
  end

  def create
    spot = Spot.new(spot_params)
    spot.save!
    redirect_to new_spot_path
  end

  def show
    @spot = Spot.find(params[:id])
    @spot_review = SpotReview.new
    @spot_review_image = @spot_review.spot_review_images.build
    if user_signed_in?
      session[:url] = nil
    else
      session[:url] = request.url
    end
    flash.now[:notice] = "この観光地はいかがですか？"
  end

  def show_reviews
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def map
    @spot= Spot.find(params[:id])
  end

    private

    def spot_params
    	params.require(:spot).permit(:name, :area_id, :s_spot_genre_id, :description, :short_description,
    	                             :period, :postal_code, :location, :path, :latitude, :longitude, :deleted_at, :map_url, :tag_list,
                                    spot_images_attributes: [ :id, :image, :_destory ])
    end

end
