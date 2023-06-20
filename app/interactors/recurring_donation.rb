# frozen_string_literal: true

class RecurringDonation
  include Interactor::Organizer

  organize(
    CreateStripePrice,
    CreateStripeSubscription
  )
end
