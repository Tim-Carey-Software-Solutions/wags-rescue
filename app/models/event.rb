# == Schema Information
#
# Table name: events
#
#  id         :bigint           not null, primary key
#  when       :date
#  start      :time
#  end        :time
#  directions :string
#  location   :string
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Event < ApplicationRecord
end
