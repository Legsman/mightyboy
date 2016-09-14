class ContactForm < ActionMailer::Base

default from: "noreply@mightyboy.com"
  default to: "hello@mightyboyeatery.com.au"

  def new_catering(catering)
    @catering = catering
    
    mail subject: "Message from #{catering.name}"
  end

end