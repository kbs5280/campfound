class FestivalsController < ApplicationController
  def index
    @festivals = Festivals.find_all_by(params)
  end

  def show
    @festival = Festival.find_one_by(params[:id])
  end

  def create
    festival = Search.new(user_id: current_user.id, festival_name: params[:festival_name], festival_id: params[:festival_id])
    if festival.save
      flash[:notice] = 'Search saved to your dashboard!'
      redirect_to festival_path(params[:festival_id])
    else
      flash[:notice] = 'Save unsuccessful.'
      redirect_to festival_path(params[:festival_id])
    end
  end
end
