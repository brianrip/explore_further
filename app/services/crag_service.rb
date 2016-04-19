class CragService
  def initialize
    @connection = Faraday.new(url: "")
  end
end
http://dev.thecrag.com/api/index/detail/world?
