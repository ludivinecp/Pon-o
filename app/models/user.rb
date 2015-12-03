class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :rider, required: false
  has_one :centre, required: true
  after_create :notification
  # validates_presence_of  :nickname, :first_name, :last_name, :level, :phone
  # mount_uploader :avatar, AvatarUploader

  private
def notification
  UserMailer.confirmation(self).deliver_now
end
end
