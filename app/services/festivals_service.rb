class FestivalsService
  def initialize
    @_connection = Faraday.new('http://api.eventful.com')
    connection.params["app_key"]="#{ENV['eventful_app_key']}"
  end

  def festivals(params)
    response = connection.get("json/events/search",
                             { keywords: 'festival',
                               location: params[:location],
                               date:     params[:date],
                               radius:   params[:radius] })
    parse(response.body)
  end

  def festival(id)
    response = connection.get("json/events/get",
                             { id: id})
    parse(response.body)
  end

  private

    def connection
      @_connection
    end

    def parse(response_body)
      JSON.parse(response_body, symbolize_names: true)
    end
end
