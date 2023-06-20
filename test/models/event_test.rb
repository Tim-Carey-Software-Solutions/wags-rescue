# frozen_string_literal: true

# == Schema Information
#
# Table name: events
#
#  id         :bigint           not null, primary key
#  name       :string
#  location   :string
#  start      :time
#  end        :time
#  when       :date
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
