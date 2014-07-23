class UserMailer < ActionMailer::Base
  default from: "reponse@PovertyList.com"

  def welcome_email(user)
    @user = user
    mail to: @user.email, subject: "TEST EMAIL"
  end
end
