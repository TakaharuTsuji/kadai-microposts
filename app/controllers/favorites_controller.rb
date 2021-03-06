class FavoritesController < ApplicationController

  def create
    likempost = Micropost.find(params[:like_id])
    current_user.favorite(likempost)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    unlikempost = Micropost.find(params[:like_id])
    current_user.unfavorite(unlikempost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_back(fallback_location: root_path)
  end

end
