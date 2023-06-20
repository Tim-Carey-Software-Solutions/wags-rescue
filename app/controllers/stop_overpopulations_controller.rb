# frozen_string_literal: true

class StopOverpopulationsController < ApplicationController
  include QuantityHelper
  include PaymentSuccessRedirectHelper

  def new
    result = StripeCheckout.call(
      success_url: success_stop_overpopulations_url,
      cancel_url: donate_url,
      price: ENV['STRIPE_STOP_OVERPOPULATION_PRICE_ID'],
      quantity:
    )

    respond_to do |format|
      if result.success?
        format.html { redirect_to result.session_url, allow_other_host: true }
      else
        format.html { render :'pages/wishlist', status: :unprocessable_entity, alert: 'Something went wrong!' }
      end
    end
  end

  def success
    donate_page_success_redirect
  end

  def cancel; end
end
