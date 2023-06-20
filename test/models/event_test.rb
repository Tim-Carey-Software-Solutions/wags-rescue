# frozen_string_literal: true

# == Schema Information
#
# Table name: events
#
#  id         :bigint           not null, primary key
#  when       :date
#  start      :time
#  end        :time
#  location   :string
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
