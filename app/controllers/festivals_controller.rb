class FestivalsController < ApplicationController
  attr_reader :festivals
  def index
    @festivals = Festivals.find_all(params)
  end

  def show
    @festival = Festival.find(params[:festival_id])
  end
end
