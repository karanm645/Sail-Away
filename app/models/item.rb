class Item < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :category
  validates_presence_of :quantity
end 