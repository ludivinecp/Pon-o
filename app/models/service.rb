class Service < ActiveRecord::Base
  belongs_to :centre
  has_many :bookings
  belongs_to :category
  validates_presence_of :image1
  validates_presence_of :number_of_people

  mount_uploader :image1, PictureUploader
  mount_uploader :image2, PictureUploader
  mount_uploader :image3, PictureUploader
  mount_uploader :image4, PictureUploader

  def remaining_places
      count = number_of_people
      bookings.each do |resa|
        count -= resa.number_of_people
      end
      count
  end
end