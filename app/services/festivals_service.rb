class FestivalsService
  def initialize
    @_connection = Faraday.new('http://api.eventful.com')
  end

  def festivals(params)
    response = connection.get("json/events/search?keywords=festival&app_key=#{ENV['eventful_app_key']}",
                             { location: params[:location],
                               date:     params[:date],
                               radius:   params[:radius] })
    JSON.parse(response.body)
  end

  private

    def connection
      @_connection
    end
end
