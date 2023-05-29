class OneTimeDonationsController < ApplicationController
  def new
    amount_in_dollars = params[:donation_amount]
    amount_in_cents = (amount_in_dollars.to_f * 100).to_i

    charge = Stripe::Charge.create(
      amount: amount_in_cents,
      currency: 'usd',
      source: 'tok_visa',
      metadata: {
        'reason_for_donation' => params[:reason_for_donation],
      }
    )
    if charge.status == "succeeded"
      redirect_to donate_path, notice: "Thank you for your donation of $#{params[:donation_amount]}!"
    else
      redirect_to donate_path, alert: "Something went wrong. Please try again."
    end
  end

  def cancel
  end

  def success
  end
end
