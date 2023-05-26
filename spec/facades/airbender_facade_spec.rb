require 'rails_helper'

RSpec.describe 'Airbender Facade' do
  describe 'nation_members' do
    it 'returns 25 members of a nation' do
      nation = 'fire_nation'
      limit = 100

      members = AirbenderFacade.new.nation_members(nation, limit)

      expect(members).to be_an(Array)
      expect(members.count).to eq(25)
    end
  end
end