class CragService
  attr_reader :connection
  def initialize
    @connection = Faraday.new(url: "http://dev.thecrag.com/api/index/detail/world?key=9z6lwrevp5f4ev4r")
    # @connection.headers = {"X-CData-Key" => "key=9z6lwrevp5f4ev4r"}
  end

  def climbing_areas
    JSON.parse(connection.get.body, symbolize_names: true)
  end
end
