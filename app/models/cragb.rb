class Cragb
  def self.build_crag(region_data)
    region_data[:data].first.map do |crag_data|

    crag = Crag.find_or_create_by(cid: crag_data[:id])

    crag.cid               = crag_data[:id].to_i
    crag.name              = crag_data[:name]
    crag.route_quantity    = crag_data[:name]
    crag.climbing_styles   = crag_data[:styles].first.map { |style| style[:style] }.unique.join
    crag.save
    crag
  end
end
