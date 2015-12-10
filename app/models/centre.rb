class Centre < ActiveRecord::Base
  has_many :services
  belongs_to :user
  has_many :bookings
  geocoded_by :address
  after_validation :geocode
  #mount_uploaders :pictures, PictureUploader
end
