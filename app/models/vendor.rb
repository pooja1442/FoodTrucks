class Vendor < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories , dependent: :destroy
  has_one :tax , dependent: :destroy
  has_and_belongs_to_many :cities , dependent: :destroy
  has_many :products , dependent: :destroy

  validates :terms_of_service, :acceptance => true

  accepts_nested_attributes_for :tax
  accepts_nested_attributes_for :products

  has_one_attached :feature_image
end
=begin  belongs_to :city
  
  def city_name
    city.try(:name)
  end
     <%= f.text_field :city_name ,data: {autocomplete_source: City.order(:name).map(&:name)}, class: 'form-control'%>

  def city_name=(name)
    self.city = City..find_or_create_by_name(name) if name.present?
  end
=end

