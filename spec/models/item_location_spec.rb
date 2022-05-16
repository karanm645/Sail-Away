require "rails_helper"

RSpec.describe ItemLocation do 
  describe 'relations' do 
    it { should belong_to :item}
    it { should belong_to :location}
  end 
end 