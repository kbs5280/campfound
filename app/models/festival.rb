class Festival
  attr_reader :title, :city, :state, :date, :address,
              :description, :url, :longitude, :latitude, :id

  def initialize(festival)
    @title       = festival[:title]
    @city        = festival[:city]
    @state       = festival[:region]
    @date        = date_format(festival[:start_time])
    @address     = festival[:address]
    @description = festival[:description]
    @url         = festival[:url]
    @longitude   = festival[:longitude]
    @latitude    = festival[:latitude]
    @id          = festival[:id]
  end

  def self.find_one_by(id)
    festival = FestivalsService.new.festival(id)
    Festival.new(festival)
  end

  def date_format(datetime)
    datetime.to_datetime.strftime('%b %d, %Y') if datetime
  end
end
