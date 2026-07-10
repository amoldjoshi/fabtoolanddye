class Project < ApplicationRecord
  belongs_to :service
  #Amol commented out following line, using static images in assets/images folder for now. Will use active storage later.
  #has_one_attached :image
end
