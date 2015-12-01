class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.confirmation.subject
  #
  def confirmation(user)
    @user = user
    mail to: "#{@user.email}", subject: "Confirmation d'inscription"
  end
end
