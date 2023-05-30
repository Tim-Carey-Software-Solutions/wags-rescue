class FeedHomelessPetsController < ApplicationController

  def new

    session = Stripe::Checkout::Session.create({
                                                 line_items: [{
                                                                price: ENV['STRIPE_FEED_HOMELESS_PET_PRICE_ID'],
                                                                quantity: params[:quantity].to_i,
                                                              }],
                                                 payment_method_types: ['card'],
                                                 mode: 'payment',
                                                 invoice_creation: { enabled: true },
                                                 success_url: one_time_donations_success_url + "?session_id={CHECKOUT_SESSION_ID}",
                                                 cancel_url: one_time_donations_cancel_url,
                                               })

    redirect_to session.url, status: 303, allow_other_host: true
  end

  def cancel
  end
end
