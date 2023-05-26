require 'rails_helper'

RSpec.describe AirbenderService do
  describe 'nation_members' do
    it 'returns nation members and their data' do
      search_nation = 'fire+nation'
      members = AirbenderService.new.nation_members(search_nation)

      expect(members).to be_an(Array)
      expect(members.count).to eq(20)
    end
  end

  describe 'limit_per_page' do
    it 'returns members limited to number per page' do
      character_amount = 100
      members = AirbenderService.new.limit_per_page(character_amount)

      expect(members).to be_an(Array)
      expect(members.count).to eq(100)
    end
  end
end