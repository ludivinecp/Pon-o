class Booking < ActiveRecord::Base
  belongs_to :centre
  belongs_to :service
  belongs_to :rider
  validates_presence_of :number_of_people

  # def total_amount (number_of_people)
  # self.number_of_people * service.price   
  # end
  # before_action :authenticate_user!

  scope :rider, -> {where(rider_id: 2)} #allow you to write "Booking.rider", instead of scope "Booking.where(rider_id: 2)}" every time you'll use it.

  def booking_resume
    BookingMailer.confirmation(self).deliver_now
  end

end
