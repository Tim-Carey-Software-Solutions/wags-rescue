# frozen_string_literal: true

# == Schema Information
#
# Table name: customers
#
#  id                 :bigint           not null, primary key
#  stripe_customer_id :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
