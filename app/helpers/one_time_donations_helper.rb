# frozen_string_literal: true

module OneTimeDonationsHelper
  def donation_price_ids
    {
      '5.00' => ENV['STRIPE_FIVE_PRICE_ID'],
      '10.00' => ENV['STRIPE_TEN_PRICE_ID'],
      '25.00' => ENV['STRIPE_TWENTY_FIVE_PRICE_ID'],
      '30.00' => ENV['STRIPE_THIRTY_PRICE_ID'],
      '50.00' => ENV['STRIPE_FIFTY_PRICE_ID'],
      '100.00' => ENV['STRIPE_ONEHUNDRED_PRICE_ID'],
      '200.00' => ENV['STRIPE_TWOHUNDRED_PRICE_ID'],
      '300.00' => ENV['STRIPE_THREEHUNDRED_PRICE_ID'],
      '400.00' => ENV['STRIPE_FOURHUNDRED_PRICE_ID'],
      '500.00' => ENV['STRIPE_FIVEHUNDRED_PRICE_ID']
    }
  end
end
