class CragsBuilder

  def self.build_crags(activity, miles, athlete_id)
    degrees      = MilesConverter.convert(miles.to_f)
    bounding_box = ActivityBox.build_box(activity, degrees.to_f)
    area_node    = CragService.new.climbing_area(bounding_box)
    crag_data    = CragService.new.crag_children(area_node[:data][:mapto].first)
    crags        = Crag.build_crag(crag_data)
    crags.map { |crag| crag.update(activity_id: activity.id, athlete_id: athlete_id) }
  end

end
