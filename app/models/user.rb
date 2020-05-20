class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :vendor
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, 
          :trackable ,:omniauthable,
         omniauth_providers: [:facebook]

  has_one_attached :feature_image
  
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.first_name = auth.info.name
      user.provider = auth.provider
      user.uid = auth.uid
    end
  end
end
