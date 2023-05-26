require 'rails_helper'

RSpec.describe 'Search', type: :feature do
  describe 'search for airbender members' do
    it 'sends Fire Nation members and their data' do
      visit root_path

      select 'Fire Nation', from: :nation
      click_on 'Search For Members'

      expect(current_path).to eq(search_path)
      expect(page).to have_content('20 Members of the Fire Nation')
      expect(page).to have_css('.member', count: 20)

      within(first('.member')) do
        expect(page).to have_content('Afiko')
        expect(page).to have_content('Ozai')

        within(first('.photo')) do
          expect(page).to have_css("img[src*='https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128']")
        end
      end
    end
  end
end