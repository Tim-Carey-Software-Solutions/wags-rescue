class OneTimeDonationsController < ApplicationController
  include OneTimeDonationsHelper
  include PaymentSuccessRedirectHelper
  def new

    result = StripeCheckout.call(
      success_url: success_one_time_donations_url,
      cancel_url: donate_url,
      price: selected_price_id,
      payment_intent_data: {
        description: params[:reason_for_donation],
        metadata: {
          reason_for_donation: params[:reason_for_donation]
        }
      }
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
    donate_page_success_redirect
  end

  private

  def selected_price_id
    donation_price_ids[params[:donation_amount]]
  end
end
