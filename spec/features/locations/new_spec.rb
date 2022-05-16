require 'rails_helper'

RSpec.describe "location creation" do 
  before :each do 
    @chicago = Location.create!(city: "Chicago", state: "Illinois", country: "US")
    @sf = Location.create!(city: "San Francisco", state: "California", country: "US")
    @dallas = Location.create!(city: "Dallas", state: "Texas", country: "US")
  end 
  describe 'when i visit /dashboard/locations' do 
    it 'has a button to create a new location with items associated to it' do 
      visit "/dashboard/locations"
      expect(current_path).to eq("/dashboard/locations")
      expect(page).to have_button('New Location')
    end 

    it 'can fill out a form' do 
      visit "/dashboard/locations"
      click_button 'New Location'
      
      visit "/dashboard/locations/new"
      
      fill_in(:name, with: 'Roses')
      fill_in(:category, with: 'Plants')
      fill_in(:quantity, with: 25)
      click_button('Create Item')

      expect(current_path).to eq("/dashboard/items")
    end 
  end 
end 