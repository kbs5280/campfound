require 'rails_helper'

describe 'Festivals', type: :model do
  it 'creates an object and assigns attributes' do
    VCR.use_cassette('festivals_find_all_by') do
      params = ({"location"=>"Denver, CO",
                 "date"=>"October",
                 "radius"=>"10"})
      festivals = Festivals.find_all_by(params)
      festival  = festivals.first

      expect(festival.title).to eq('2016 ESSENCE MUSIC FESTIVAL')
      expect(festival.city).to eq('New Orleans')
      expect(festival.state).to eq('Louisiana')
    end
  end
end
