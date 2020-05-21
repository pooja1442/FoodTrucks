class Choice < ApplicationRecord
  belongs_to :product
  has_many :options , dependent: :destroy ,inverse_of: :choice
  accepts_nested_attributes_for :options , allow_destroy: true
end
