class Service < ActiveRecord::Base
  belongs_to :centre
  has_many :bookings
  belongs_to :category
  mount_uploader :image1, PictureUploader
  mount_uploader :image2, PictureUploader
  mount_uploader :image3, PictureUploader
  mount_uploader :image4, PictureUploader
end
