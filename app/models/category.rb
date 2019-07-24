class Category < ApplicationRecord
  attr_accessor :item
  acts_as_paranoid

  has_many :items
end
