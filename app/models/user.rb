class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  has_one :rider
  has_one :centre
  after_create :notification
  after_create :unique_role
  # validates_presence_of  :nickname, :first_name, :last_name, :level, :phone

 rails_admin do
     exclude_fields :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :created_at, :updated_at, :provider, :uid, :name
  end
 
  def unique_role
    if self.is_centre?
      usercenter = Centre.new(user_id: self.id)
      usercenter.save
    else
      userrider = Rider.new(user_id: self.id)
      userrider.save
    end
  end


#facebook Authentification
  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
    end
  end

   def complete_profile #check if profile is complete before allowing the rider to place a booking
    nothing = []
    self.rider.attributes.each do |k, v|
      if ["nickname", "first_name", "last_name", "phone", "level"].include?(k)
        nothing << v.blank?
      end
    end
    
    if nothing.include?(true)
      false
    else
      true
    end   
  end
     
  
  private
  def notification
    UserMailer.confirmation(self).deliver_now
  end
end


