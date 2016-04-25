describe ActivityService do
  context '#activities' do
    it 'returns activities' do
      VCR.use_cassette 'activity_service#activities' do
        token = "e1c1964dbe37a42ab8eef6ae96dd07808579ec48"
        activity_service = ActivityService.new(token)
        all_activities = activity_service.activities
        activity = all_activities.first
        expect(activity[:location_country]).to eq("United States")
        expect(all_activities.count).to eq(30)
      end
    end
  end
end
