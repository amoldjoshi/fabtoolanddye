class Project < ApplicationRecord
  belongs_to :service
  #Amol commented out following line, using static images in assets/images folder for now. Will use active storage later.
  #has_one_attached :image

  before_validation :generate_slug, if: -> { slug.blank? && title.present? }
  validates :slug, presence: true, uniqueness: true

  def to_param
    slug
  end

  private

  def generate_slug
    self.slug = title.parameterize
  end
end
