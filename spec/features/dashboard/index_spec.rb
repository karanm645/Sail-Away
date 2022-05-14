require 'rails_helper'

RSpec.describe 'dashboard' do 
  before :each do 
    visit "/dashboard"
  end  
  describe 'when i visit /dashboard' do 
    it 'displays a message to user' do 
      expect(page).to have_content("Welcome! How would you like to get started?")
    end
    
    it 'has a link to items index page' do
      expect(page).to have_link("view all items")
    end 
  end 
end 