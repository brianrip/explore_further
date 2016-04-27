class CragsBuilder

  def self.build_crags(activity, distance, athlete_id)
    bounding_box = ActivityBox.build_box(activity, distance)
    area_node = CragService.new.climbing_area(bounding_box)
    crag_data = CragService.new.crag_children(area_node[:data][:mapto].first)
    crags = Crag.build_crag(crag_data)
    crags.each { |crag| crag.update(activity_id: activity.id, athlete_id: athlete_id) }
  end

end
