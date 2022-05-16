class Location < ApplicationRecord
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :country

  has_many :item_locations
  has_many :items, through: :item_locations
end 