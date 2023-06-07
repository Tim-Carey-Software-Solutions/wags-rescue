class FeedHomelessPetsController < ApplicationController
  include PaymentSuccessRedirectHelper
  include QuantityHelper

  def new

    result = StripeCheckout.call(
      success_url: success_feed_homeless_pets_url,
      cancel_url: donate_url,
      price: ENV['STRIPE_FEED_HOMELESS_PET_PRICE_ID'],
      quantity: quantity
    )

    respond_to do |format|
      if result.success?
        format.html { redirect_to result.session_url, allow_other_host: true }
      else
        format.html { render :'pages/wishlist', status: :unprocessable_entity, alert: "Something went wrong!" }
      end
    end
  end

  def success
    donate_page_success_redirect
  end

  def cancel
  end
end
