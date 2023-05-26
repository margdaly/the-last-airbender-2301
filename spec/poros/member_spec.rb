require 'rails_helper'

RSpec.describe 'Member' do
  it 'exists and has attributes' do
    attr = {
            :_id=>'5cf5679a915ecad153ab68cc',
            :allies=>['Fire Nation'],
            :enemies=>['Aang'],
            :photoUrl=>
            'https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128',
            :name=>'Afiko',
            :affiliation=>'Fire Nation'
          }

    member = Member.new(attr)

    expect(member).to be_a Member
    expect(member.name).to be_a String
    expect(member.name).to eq('Afiko')
    expect(member.affiliation).to be_a String
    expect(member.allies).to eq(['Fire Nation'])
    expect(member.enemies).to eq(['Aang'])
    expect(member.photo).to eq('https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128')
  end
end