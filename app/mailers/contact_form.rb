class ContactForm < ActionMailer::Base

default from: "noreply@mightyboy.com"
  default to: "maciaantoine@yahoo.fr"

  def new_catering(catering)
    @catering = catering
    
    mail subject: "Message from #{catering.name}"
  end

end