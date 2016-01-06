class BookingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.new_booking.subject
  #
  def new_booking(booking)
    @booking = booking
    @centre = booking.centre
    @user = booking.rider
    @service = booking.service
    mail to: "@user.user.email", 
         subject: "Résumé de votre réservation"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.booking_mailer.confirmation_booking.subject
  #
  def confirmation_booking(booking)
    @booking = booking
    @centre = booking.centre
    @user = booking.rider
    @service = booking.service
    mail to: "@user.user.email", 
         subject: "Confirmation de votre réservation"
  end
end
