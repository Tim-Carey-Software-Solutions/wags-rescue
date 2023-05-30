class RecurringDonationsController < ApplicationController
  def new
    amount_in_dollars = params[:donation_amount]
    amount_in_cents = (amount_in_dollars.to_f * 100).to_i

    result = RecurringDonation.call(
      unit_amount: amount_in_cents,
      interval: 'month',
      interval_count: params[:interval],
      success_url: success_recurring_donations_url,
      donate_url: donate_url,
    )


    respond_to do |format|
      if result.success?
        session[:interval] = params[:interval]
        format.html { redirect_to result.session_url, allow_other_host: true }
      else
        format.html { render :'pages/donate', status: :unprocessable_entity, alert: "Something went wrong!" }
      end
    end
  end

  def success
    session_id = params[:session_id]
    checkout_session = Stripe::Checkout::Session.retrieve(session_id)
    subscription = Stripe::Subscription.retrieve(checkout_session.subscription)

    subscription_start = Time.at(subscription.current_period_start)

    interval = session[:interval]

    Stripe::Subscription.update(
      subscription.id,
      cancel_at: subscription_start.to_i + interval.to_i.months,
    )

    customer_id = checkout_session.customer
    Customer.create(stripe_customer_id: customer_id)
    redirect_to donate_path, notice: "Thank you for your donation!"
  end
end
