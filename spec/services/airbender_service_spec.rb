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

  describe '25_nation_members' do
    it 'returns 25 members of a nation' do
      search_nation = 'fire+nation'
      limit_per_page = 25
      members = AirbenderService.new.nation_members(search_nation, limit_per_page)

      expect(members).to be_an(Array)
      expect(members.count).to eq(25)

      expect(members.first).to be_a(Hash)

      expect(members.first[:data]).to have_key(:_id)
      expect(members.first[:_id]).to be_a(String)

      
    end
  end
end