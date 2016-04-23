class CragService
  attr_reader :connection
  def initialize
    @connection = Faraday.new(url: "http://www.thecrag.com/api")
    @connection.headers = {"X-CData-Key" => "key=9z6lwrevp5f4ev4r"}
  end

  def climbing_area(activity_box)
    JSON.parse(connection.get("map/bbox?s=#{activity_box[0]},#{activity_box[1]},#{activity_box[2]},#{activity_box[3]}").body, symbolize_names: true)
  end

  def crag_children(area_node)
    JSON.parse(connection.get("area/id/#{area_node}/children").body, symbolize_names: true)
  end
end
