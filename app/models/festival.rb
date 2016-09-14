class Festival
  attr_reader :title, :city, :state, :date, :address,
              :description, :url, :longitude, :latitude, :id

  def initialize(festival)
    @title       = festival["title"]
    @city        = festival["city"]
    @state       = festival["region"]
    @date        = date(festival["start_time"])
    @address     = festival["address"]
    @description = festival["description"]
    @url         = festival["url"]
    @longitude   = festival["longitude"]
    @latitude    = festival["latitude"]
    @id          = festival["id"]
  end

  def self.find(id)
    festival = FestivalsService.new.festival(id)
    Festival.new(festival)
  end

  def date(datetime)
    datetime.to_datetime.strftime('%b %d, %Y')
  end
end
