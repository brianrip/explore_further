class ActivityService
  attr_reader :connection

  def initialize(token)
    @connection = Faraday.new(url: "https://www.strava.com/api/v3")
    @connection.headers = { "Authorization" => "Bearer #{token}" }
  end

  def activities
    act = JSON.parse(connection.get('athlete/activities').body, symbolize_names: true)
  end

end
