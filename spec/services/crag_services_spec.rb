describe CragService do
  context '#climbing_areas' do
    it 'returns area node ids' do
      VCR.use_cassette 'crag_service#climbing_areas' do
        service = CragService.new
        climbing_area = service.climbing_area([-105.30, 39.98, -105.27, 40.00])
        expect(climbing_area[:data][:mapto]).to match_array(["14375143"])
        expect(climbing_area[:data][:mapto].count).to eq(1)
      end
    end
  end
end
