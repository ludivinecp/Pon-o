class Booking < ActiveRecord::Base
  belongs_to :centre
  belongs_to :service
  belongs_to :rider
  validates_presence_of :number_of_people

  # def total_amount (number_of_people)
  # self.number_of_people * service.price   
  # end
  # before_action :authenticate_user!  

  def passed_booking
    self.service.date < DateTime.now
  end 

  def current_booking
    self.service.date > DateTime.now
  end     

  def total_price(service)
    self.number_of_people * service.price
  end   

  def mailer_new_booking
    BookingMailer.new_booking(self).deliver_now
  end

  def mailer_booking_confirmation
    BookingMailer.confirmation_booking(self).deliver_now
  end
end
