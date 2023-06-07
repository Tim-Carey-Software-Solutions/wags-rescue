class StripeCheckout
  include Interactor

  delegate :success_url, :cancel_url, :price, to: :context

  def call
    session = Stripe::Checkout::Session.create({
                                                 line_items: [{
                                                                price: price,
                                                                quantity: 1,
                                                              }],
                                                 payment_method_types: ['card'],
                                                 mode: 'payment',
                                                 invoice_creation: { enabled: true },
                                                 success_url: success_url + "?session_id={CHECKOUT_SESSION_ID}",
                                                 cancel_url: cancel_url
                                               })

    context.session_url = session.url
  end
end