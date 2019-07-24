class Item < ApplicationRecord

  has_and_belongs_to_many :users, {:optional => true}
  belongs_to :category, {:optional => true}

end
