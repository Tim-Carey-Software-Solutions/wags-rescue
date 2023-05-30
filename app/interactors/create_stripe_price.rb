class CreateStripePrice
  include Interactor

  delegate :unit_amount, to: :context

  def call
    price = Stripe::Price.create(
      unit_amount: context.unit_amount,
      currency: 'usd',
      product: ENV['STRIPE_RECURRING_PROD_ID'],
      recurring: {
        interval: 'month',
      },
    )

    context.price_id = price.id
  end

  def rollback
    context.destroy
  end
end