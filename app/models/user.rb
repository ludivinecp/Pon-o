class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :rider
  has_one :centre
  after_create :notification
  after_create :unique_role
  # validates_presence_of  :nickname, :first_name, :last_name, :level, :phone

 
  def unique_role
    if self.is_centre?
      usercenter = Centre.new(user_id: self.id)
      usercenter.save
    else
      userrider = Rider.new(user_id: self.id)
      userrider.save
    end
  end


  private
def notification
  UserMailer.confirmation(self).deliver_now
end
end
