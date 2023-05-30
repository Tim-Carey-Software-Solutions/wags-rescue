class FeedHomelessPetsController < ApplicationController

  def new
    quantity = params[:quantity].blank? ? 1 : params[:quantity].to_i

    session = Stripe::Checkout::Session.create({
                                                 line_items: [{
                                                                price: ENV['STRIPE_FEED_HOMELESS_PET_PRICE_ID'],
                                                                quantity: quantity,
                                                              }],
                                                 payment_method_types: ['card'],
                                                 mode: 'payment',
                                                 invoice_creation: { enabled: true },
                                                 success_url: one_time_donations_success_url + "?session_id={CHECKOUT_SESSION_ID}",
                                                 cancel_url: donate_url,
                                               })

    redirect_to session.url, status: 303, allow_other_host: true
  end

  def cancel
  end
end
