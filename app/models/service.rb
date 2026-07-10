class Service < ApplicationRecord
  #Amol added following lines
  has_many :projects, dependent: :destroy
  #Amol removed, using static images in assets/images folder for now. Will use active storage later.
  #has_one_attached :image
end
