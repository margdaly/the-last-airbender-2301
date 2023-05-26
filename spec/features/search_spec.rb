require 'rails_helper'

RSpec.feature 'Search' do
  describe 'search for airbender members by nation' do
    it 'returns fire nation members and their data' do
      visit root_path

      select 'Fire Nation', from: :nation
      click_button 'Search For Members'

      expect(current_path).to eq(search_path)
      expect(page).to have_content('100 Members of the Fire Nation')
      expect(page).to have_css('.member', count: 25)

      within(first('.member')) do
        expect(page).to have_css("img[src*='https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128']")
        within('.name') do
          expect(page).to have_content('Afiko')
        end
        within('.allies') do
          expect(page).to have_content('Fire Nation')
        end
        within('.enemies') do
          expect(page).to have_content('Aang')
        end
        within('.affiliation') do
          expect(page).to have_content('Fire Nation')
        end
      end

      within('.member-5cf5679a915ecad153ab691d') do
        expect(page).to have_css("img[src*='https://vignette.wikia.nocookie.net/avatar/images/1/16/Ember_Island_Players.png/revision/latest?cb=20130722113209']")
        within('.name') do
          expect(page).to have_content('Ember Island Players')
        end
        within('.allies') do
          expect(page).to have_content('None')
        end
        within('.enemies') do
          expect(page).to have_content('None')
        end
        within('.affiliation') do
          expect(page).to have_content('Fire Nation')
        end
      end
    end
  end
end