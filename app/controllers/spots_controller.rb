class SpotsController < ApplicationController
  before_action :createguest!, only: [:show]

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
    @guest = Guest.find_by(id:session[:guest_id])
    if @spot.spot_images.exists?
      @image = @spot.spot_images.offset( rand(@spot.spot_images.count) ).first
    end
    if user_signed_in?
      session[:url] = nil
      if @spot.spot_likes.exists?
        if !@guest.nil?
          if @spot.spot_likes.where(user_id: @guest.id).exists?
            like = SpotLike.find_by(user_id: @guest.id, spot_id: @spot.id)
            like.user_id = current_user.id
            like.remote_ip = request.remote_ip
            like.save
          end
        @guest.destroy
        session[:guest_id] = nil
        end
      end
    else
      session[:url] = request.url
    end
    flash.now[:notice] = "\uf002 この観光地はいかがですか？"
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

    def createguest!
      if !user_signed_in?
        if session[:guest_id].nil?
          @guest = Guest.new
          @guest.save
          session[:guest_id] = @guest.id
        else
          @guest = Guest.find_by(id:session[:guest_id])
        end
      end
    end

    def spot_params
    	params.require(:spot).permit(:name, :area_id, :s_spot_genre_id, :description, :short_description,
    	                             :period, :postal_code, :location, :path, :latitude, :longitude, :deleted_at, :map_url, :tag_list,
                                    spot_images_attributes: [ :id, :image, :_destory ])
    end

end
