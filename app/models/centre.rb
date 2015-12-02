class Centre < ActiveRecord::Base
  has_many :services
  belongs_to :user
  has_many :bookings
  geocoded_by :address
  after_validation :geocode
  mount_uploader :picture, PictureUploader
  # mount_uploader :avatar, AvatarUploader
end
