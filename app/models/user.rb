class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :registerable
  devise :invitable, :database_authenticatable,
         :recoverable, :rememberable, :validatable, :confirmable

  acts_as_paranoid

  has_many :purchaserequests
  has_and_belongs_to_many :items, {:optional => true}

end
