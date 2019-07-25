class Purchaserequest < ApplicationRecord
  
  enum status: [ :pending, :accepted, :rejected ]

  belongs_to :user , {:optional => true}
end
