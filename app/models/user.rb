class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # :registerable
  devise :invitable, :database_authenticatable,
         :recoverable, :rememberable, :validatable, :confirmable
end
