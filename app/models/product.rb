class Product < ApplicationRecord
  belongs_to :vendor
  has_many :choices , dependent: :destroy , inverse_of: :product

  accepts_nested_attributes_for :choices , allow_destroy: true
  has_one_attached :feature_image
end
