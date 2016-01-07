# Preview all emails at http://localhost:3000/rails/mailers/booking_mailer
class BookingMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/booking_mailer/new_booking
  def new_booking
    BookingMailer.new_booking
    booking = Booking.last
    BookingMailer.new_booking(booking)
  end

  # Preview this email at http://localhost:3000/rails/mailers/booking_mailer/confirmation_booking
  def confirmation_booking
    BookingMailer.confirmation_booking
    booking = Booking.last
    BookingMailer.confirmation_booking(booking)
  end

end
