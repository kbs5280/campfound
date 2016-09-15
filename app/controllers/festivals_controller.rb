class FestivalsController < ApplicationController
  attr_reader :festivals
  def index
    @festivals = Festivals.find_all_by(params)
  end

  def show
    @festival = Festival.find_one_by(params[:festival_id])
  end
end
