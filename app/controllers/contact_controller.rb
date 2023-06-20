# frozen_string_literal: true

class ContactController < ApplicationController
  def send_email
    name = params[:name]
    email = params[:email]
    message = params[:message]

    ContactMailer.send_email(name, email, message).deliver_now

    redirect_to contact_us_path, notice: 'Email sent successfully!'
  end
end
