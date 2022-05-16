class Item < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :category
  validates_presence_of :quantity

  has_many :item_locations
  has_many :locations, through: :item_locations
end 