class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :registerable
  devise :invitable, :database_authenticatable,:registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  acts_as_paranoid

  has_many :items
end
