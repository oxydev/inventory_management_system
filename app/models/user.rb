class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :registerable
  devise :invitable, :database_authenticatable,:registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  acts_as_paranoid

  has_and_belongs_to_many :items, {:optional => true}

end
