class ContactMailer < ApplicationMailer

  def send_notification(contact)
    @contact = contact
    mail to:"eddie@5xruby.tw", subject: @contact.subject
  end

end
