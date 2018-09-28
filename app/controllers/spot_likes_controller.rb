class SpotLikesController < ApplicationController

  def create_by_guest
    guest = Guest.find_by(id:session[:guest_id])
    spot = Spot.find(params[:spot_id])
    like = SpotLike.new(user_id: guest.id, spot_id: spot.id)
    like.save
    redirect_to spot_path(spot)
  end

  def delete_by_guest
    guest = Guest.find_by(id:session[:guest_id])
    spot = Spot.find(params[:spot_id])
    like = SpotLike.find_by(user_id: guest.id, spot_id: spot.id)
    like.destroy
    redirect_to spot_path(spot)
  end

  def delete_by_remote_ip
    spot = Spot.find(params[:spot_id])
    like = SpotLike.find_by(spot_id: spot.id, remote_ip: request.remote_ip)
    like.destroy
    redirect_to spot_path(spot)
  end

  def create
    spot = Spot.find(params[:spot_id])
    like = current_user.spot_likes.new(spot_id: spot.id, remote_ip: request.remote_ip)
    like.save
    redirect_to spot_path(spot)
  end

  def destroy
    spot = Spot.find(params[:spot_id])
    if current_user.spot_likes.where(spot_id: spot.id).count == 1
      like = current_user.spot_likes.find_by(spot_id: spot.id)
      like.destroy
    else
      likes = current_user.spot_likes.where(spot_id: spot.id)
      likes.delete_all
    end
    redirect_to spot_path(spot)
  end
end
