class ContactMailer < ApplicationMailer

  default from: 'charhagelin@gmail.com'

  def send_contact_email(email, message)
    @email = email
    @message = message
    mail(to: 'charhagelin@gmail.com',
             subject: 'New message from website') do |format|
          format.html { render 'contact_mailer' }
          format.text { render 'contact_mailer' }
        end
  end

end
