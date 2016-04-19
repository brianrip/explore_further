# describe CragService do
#   context '#areas' do
#     it 'returns areas' do
#       VCR.use_cassette 'crag_service#areas' do
#         service = CragService.new
#         climbing_areas = service.areas(name: "Boulder Canyon")
#         area = climbing_areas.first
#         expect(area[:name]).to eq("Boulder Canyon")
#         expect(climbing_areas.count).to eq(3)
#       end
#     end
#   end
# end
