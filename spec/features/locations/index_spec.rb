require 'rails_helper'

RSpec.describe 'locations index page' do 
  before :each do 
    @chicago = Location.create!(city: "Chicago", state: "Illinois", country: "US")
    @sf = Location.create!(city: "San Francisco", state: "California", country: "US")
    @dallas = Location.create!(city: "Dallas", state: "Texas", country: "US")
    visit "/dashboard/locations"
  end 

  describe 'when i visit /dashboard/locations' do 
    it 'has a list of all the locations' do 
      expect(page).to have_content(@chicago.city)
      expect(page).to have_content(@sf.state)
      expect(page).to have_content(@dallas.country)
    end 
  end 
end 