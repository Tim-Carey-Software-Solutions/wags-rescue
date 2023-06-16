# frozen_string_literal: true

class StripeCheckout
  include Interactor

  delegate :success_url, :cancel_url, :price, :quantity, :payment_intent_data, to: :context

  def call
    session = Stripe::Checkout::Session.create({
                                                 line_items: [{
                                                   price:,
                                                   quantity: determined_quantity
                                                 }],
                                                 payment_method_types: ['card'],
                                                 mode: 'payment',
                                                 invoice_creation: { enabled: true },
                                                 success_url:,
                                                 cancel_url:,
                                                 payment_intent_data:
                                               })

    context.session_url = session.url
  end

  private

  def determined_quantity
    quantity || 1
  end
end
