class CreateStripeSubscription
  include Interactor

  delegate :price_id, :success_url, :donate_url, to: :context

  def call
    session = Stripe::Checkout::Session.create(
      line_items: [{
                     price: context.price_id,
                      quantity: 1,
                   }],
      payment_method_types: ['card'],
      mode: 'subscription',
      success_url: success_url + "?session_id={CHECKOUT_SESSION_ID}",
      cancel_url: donate_url,
    )

    context.session_url = session.url
  end

  def rollback
    context.destroy
  end
end