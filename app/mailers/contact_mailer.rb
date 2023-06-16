# frozen_string_literal: true

class ContactMailer < ApplicationMailer
  def send_email(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(to: 'recipient@example.com', from: @email, subject: 'New Contact Form Submission')
  end
end
