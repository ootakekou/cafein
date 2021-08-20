class LikesController < ApplicationController
  def index
    @cafes = Cafe.all.includes(:user)
    @cafes = Cafe.includes(:liked_users).sort {|a,b| b.liked_users.size <=> a.liked_users.size}
  end

  def create
    @like = current_user.likes.create(cafe_id: params[:cafe_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @like = Like.find_by(cafe_id: params[:cafe_id], user_id: current_user.id)
    @like.destroy
    redirect_back(fallback_location: root_path)
  end
end
