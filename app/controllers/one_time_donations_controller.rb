class OneTimeDonationsController < ApplicationController
  def new

    session = Stripe::Checkout::Session.create({
                                                 line_items: [{
                                                                price: params[:donation_amount],
                                                                quantity: 1,
                                                              }],
                                                 mode: 'payment',
                                                 invoice_creation: { enabled: true },
                                                 allow_promotion_codes: true,
                                                 success_url: one_time_donations_success_url + "?session_id={CHECKOUT_SESSION_ID}",
                                                 cancel_url: one_time_donations_cancel_url,
                                               })

    redirect_to session.url, status: 303, allow_other_host: true
  end

  def cancel
  end

  def success
    redirect_to donate_path, notice: "Thank you for your donation!"
  end
end
