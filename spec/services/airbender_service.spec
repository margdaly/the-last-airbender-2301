require 'rails_helper'

RSpec.describe AirbenderService do
  describe 'nation_members' do
    it 'returns nation members' do
      service = AirbenderService.new

      results = service.nation_members('fire_nation')

      expect(results).to be_a Array
      expect(results.count).to eq(20)

      first_member = results.first

      expect(first_member).to have_attributes(name: 'Afiko')
      expect(first_member).to have_attributes(affiliation: 'Fire Nation')
      expect(first_member).to have_attributes(allies: ['Fire Nation'])
      expect(first_member).to have_attributes(enemies: ['Aang'])
      expect(first_member).to have_attributes(photo: 'https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128')
    end
  end
end