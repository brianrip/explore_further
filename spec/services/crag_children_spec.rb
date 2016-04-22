describe CragService do
  context '#crag_children' do
    it 'returns names of climing areas' do
      VCR.use_cassette 'crag_service#crag_children' do
        service = CragService.new
        crag_children = service.crag_children("14375143")
        expect(crag_children[:data].first[:name]).to eq("Central Flatirons")
      end
    end
  end
end
