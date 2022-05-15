class Item < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :type
  validates_presence_of :quantity
end 