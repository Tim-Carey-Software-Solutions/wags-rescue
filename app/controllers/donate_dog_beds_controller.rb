class DonateDogBedsController < ApplicationController
  include PaymentSuccessRedirectHelper

  def small_bed

    result = StripeCheckout.call(
      success_url: success_donate_dog_beds_url,
      cancel_url: wishlist_url,
      price: ENV['STRIPE_DONATE_SMALL_BED_PRICE_ID']
    )

    respond_to do |format|
      if result.success?
        format.html { redirect_to result.session_url, allow_other_host: true }
      else
        format.html { render :'pages/wishlist', status: :unprocessable_entity, alert: "Something went wrong!" }
      end
    end
  end

  def cancel
  end

  def success
    wishlist_page_success_redirect
  end

  def large_bed
    result = StripeCheckout.call(
      success_url: success_donate_dog_beds_url,
      cancel_url: wishlist_url,
      price: ENV['STRIPE_DONATE_LARGE_BED_PRICE_ID']
    )

    respond_to do |format|
      if result.success?
        format.html { redirect_to result.session_url, allow_other_host: true }
      else
        format.html { render :'pages/wishlist', status: :unprocessable_entity, alert: "Something went wrong!" }
      end
    end
  end
end