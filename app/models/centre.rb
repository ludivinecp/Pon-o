class Centre < ActiveRecord::Base
  has_many :services
  belongs_to :user
  has_many :bookings
  geocoded_by :address
  after_validation :geocode
  # mount_uploader methods take two parameters to link field in data base and Class in  picture_uploader.rb
  mount_uploader :picture, PictureUploader
end
