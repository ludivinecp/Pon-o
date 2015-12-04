class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  has_one :rider
  has_one :centre
  after_create :notification
  # validates_presence_of  :nickname, :first_name, :last_name, :level, :phone
  # mount_uploader :avatar, AvatarUploader

#facebook Authentification
  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
    end
  end
  
  private
  def notification
    UserMailer.confirmation(self).deliver_now
  end
end


