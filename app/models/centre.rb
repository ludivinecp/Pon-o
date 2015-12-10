class Centre < ActiveRecord::Base
  has_many :services
  belongs_to :user
  has_many :bookings
  geocoded_by :address
  after_validation :geocode
  mount_uploader :picture1, PictureUploader
  mount_uploader :picture2, PictureUploader
  mount_uploader :picture3, PictureUploader
  mount_uploader :picture4, PictureUploader
end
