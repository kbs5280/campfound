class FestivalsController < ApplicationController
  def index
    @festivals = Festivals.find_all(params)
  end
end
