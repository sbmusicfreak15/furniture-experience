class UserMailer < ApplicationMailer
  default from: "sbishop0930@gmail.com"

  def contact_form(email, name, message)
    @name = name
    @message = message
    mail(from: email,
      to: 'sbishop0930@gmail.com',
      subject: "A new contact form message from #{name}")
  end
end
