class Service < ActiveRecord::Base
  belongs_to :centre
  has_many :bookings
  # mount_uploader :avatar, AvatarUploader
end
