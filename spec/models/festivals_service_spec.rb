require 'rails_helper'

describe FestivalsService, type: :model do
  context '#festivals' do
    it 'returns a list of festivals' do
      VCR.use_cassette('festivals') do
        festivals = FestivalsService.new.festivals({"location"=>"Denver, CO",
                                                    "date"=>"October",
                                                    "radius"=>"10"})
        festival = festivals["events"]["event"].first
        expect(festival["title"]).to eq ("2016 ESSENCE MUSIC FESTIVAL")
        expect(festival["city_name"]).to eq ("New Orleans")
        expect(festival["region_name"]).to eq ("Louisiana")
      end
    end
  end

  context "#festival" do
    it 'returns a festival by id' do
      VCR.use_cassette('festival') do
        festival = FestivalsService.new.festival("E0-001-088801434-3@2016091513")

        expect(festival["title"]).to eq ("2016 ESSENCE MUSIC FESTIVAL")
        expect(festival["city"]).to eq ("New Orleans")
        expect(festival["region"]).to eq ("Louisiana")
      end
    end
  end
end
