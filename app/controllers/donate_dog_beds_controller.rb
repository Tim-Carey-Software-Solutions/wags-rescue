class DonateDogBedsController < ApplicationController


  def donate_small_bed
    def new

      session = Stripe::Checkout::Session.create({
                                                   line_items: [{
                                                                  price: ENV['STRIPE_DONATE_SMALL_BED_PRICE_ID'],
                                                                  quantity: 1,
                                                                }],
                                                   payment_method_types: ['card'],
                                                   mode: 'payment',
                                                   invoice_creation: { enabled: true },
                                                   success_url: one_time_donations_success_url + "?session_id={CHECKOUT_SESSION_ID}",
                                                   cancel_url: wishlist_url
                                                 })

      redirect_to session.url, status: 303, allow_other_host: true
    end

    def cancel
    end

    def success
      redirect_to wishlist_path, notice: "Thank you for your donation!"
    end
  end
  def donate_large_bed

  end
end