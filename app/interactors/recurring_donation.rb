class RecurringDonation
  include Interactor::Organizer

  organize(
    CreateStripePrice,
    CreateStripeSubscription,
  )
end
