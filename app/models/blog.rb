class Blog < ApplicationRecord
  def to_param
    slug
  end
end
