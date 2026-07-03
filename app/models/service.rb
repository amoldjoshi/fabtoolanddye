class Service < ApplicationRecord
  #Amol added following lines
  has_many :projects, dependent: :destroy
  has_one_attached :image
end
