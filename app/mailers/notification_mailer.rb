class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"

  def catering
    mail(to: "maciaantoine@yahoo.fr",
         subject: "Catering order")
  end
end
