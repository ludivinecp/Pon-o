class Centre < ActiveRecord::Base
  has_many :services
  belongs_to :user
  has_many :bookings
  # mount_uploader :avatar, AvatarUploader
end
