class RecurringDonationsController < ApplicationController
  def new
    result = RecurringDonation.call(
      unit_amount: amount_in_cents,
      interval: 'month',
      interval_count: params[:interval],
      success_url: success_recurring_donations_url,
      donate_url: donate_url
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
    update_stripe_subscription
    create_customer
    redirect_to donate_path, notice: "Thank you for your donation!"
  end

  private

  def checkout_session
    @checkout_session ||= Stripe::Checkout::Session.retrieve(session_id)
  end

  def customer_id
    @customer_id ||= checkout_session.customer
  end

  def create_customer
    Customer.create(stripe_customer_id: customer_id)
  end

  def subscription
    @subscription ||= Stripe::Subscription.retrieve(checkout_session.subscription)
  end

  def session_id
    params[:session_id]
  end

  def subscription_start
    @subscription_start ||= Time.at(subscription.current_period_start)
  end

  def interval
    session[:interval]
  end

  def cancel_at
    subscription_start.to_i + interval.to_i.months - 1.day
  end

  def update_stripe_subscription
    Stripe::Subscription.update(subscription.id, cancel_at: cancel_at)
  end

  def amount_in_cents
    amount_in_dollars = params[:donation_amount]
    (amount_in_dollars.to_f * 100).to_i
  end
end
