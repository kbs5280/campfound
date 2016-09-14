class Festivals
  attr_reader :title, :city, :state, :date, :address,
                      :description, :url, :longitude, :latitude

  def initialize(festival)
    @title       = festival["title"]
    @city        = festival["city_name"]
    @state       = festival["region_name"]
    @date        = date(festival["start_time"])
    @address     = festival["venue_address"]
    @description = festival["description"]
    @url         = festival["url"]
    @longitude   = festival["longitude"]
    @latitude    = festival["latitude"]
  end

  def self.find_all(params)
    festivals = FestivalsService.new.festivals(params)["events"]["event"]
    festivals.map do |festival|
      Festivals.new(festival)
    end
  end

  def date(datetime)
    datetime.to_datetime.strftime('%b %d, %Y')  end
end
