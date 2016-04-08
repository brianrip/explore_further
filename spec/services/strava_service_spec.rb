describe ActivityService do
  context '#activities' do
    it 'returns activities' do
      VCR.use_cassette 'activity_service#activities' do
        service = ActivityService.new
        activities = service.activities(name: "Tall flowers on the 401")
        activity = activities.first
        expect(activity[:name]).to eq("Turing group jog and circuit training")
        expect(activities.count).to eq(30)
      end
    end
  end
end
