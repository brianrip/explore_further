class Crag < ActiveRecord::Base

  def self.build_crag(region_data)
    region_data[:data].map do |crag_data|
      crag = Crag.find_or_create_by(cid: crag_data[:id])
      crag.cid               = crag_data[:id].to_i
      crag.name              = crag_data[:name]
      crag.route_quantity    = crag_data[:numberRoutes]
      if crag_data[:styles] != nil
        crag.climbing_styles = crag_data[:styles].map { |style| style[:style] }.join(", ")
      end
      crag.save
      crag
    end
  end
end
