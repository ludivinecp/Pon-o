class Service < ActiveRecord::Base
  belongs_to :centre
  has_many :bookings
  belongs_to :category
  # mount_uploader :avatar, AvatarUploader
end
