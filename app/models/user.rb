class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #Amol added enum for role     
  enum :role, { 
    user: 0, 
    power_user: 1, 
    admin: 2 
  } 
  # Ruby automatically creates methods like user?, poweruser?, and admin? for checking the role of a user.
end
