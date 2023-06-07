class OneTimeDonationsController < ApplicationController
  include OneTimeDonationsHelper
  def new
    @selected_price_id = donation_price_ids[params[:donation_amount]]

    session = Stripe::Checkout::Session.create({
                                                 line_items: [{
                                                                price: @selected_price_id,
                                                                quantity: 1,
                                                              }],
                                                 payment_method_types: ['card'],
                                                 mode: 'payment',
                                                 invoice_creation: { enabled: true },
                                                 success_url: success_one_time_donations_url + "?session_id={CHECKOUT_SESSION_ID}",
                                                 cancel_url: donate_url,
                                                 payment_intent_data: {
                                                   description: params[:reason_for_donation],
                                                   metadata: {
                                                     reason_for_donation: params[:reason_for_donation]
                                                   }
                                                 }
                                               })

    redirect_to session.url, status: 303, allow_other_host: true
  end

  def cancel
  end

  def success
    redirect_to donate_path, notice: "Thank you for your donation!"
  end
end
