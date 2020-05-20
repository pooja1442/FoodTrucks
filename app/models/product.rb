class Product < ApplicationRecord
  belongs_to :vendor

  has_one_attached :feature_image
end
