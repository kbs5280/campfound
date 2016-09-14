class FestivalsController < ApplicationController
  def index
    @festivals = FestivalsService.new.festivals(params)
  end
end
