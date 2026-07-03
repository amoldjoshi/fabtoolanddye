class Project < ApplicationRecord
  belongs_to :service
  #Amol added following line.
  has_one_attached :image
end
