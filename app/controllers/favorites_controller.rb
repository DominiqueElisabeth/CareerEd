class FavoritesController < ApplicationController
  def index
    @favorites=Favorite.all
  end
  def create
    favorite = current_user.favorites.create(job_id: params[:job_id])
    redirect_to jobs_url, notice: "You have applied"
  end
  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to jobs_url, notice: "You have revoked your application"
  end
end
