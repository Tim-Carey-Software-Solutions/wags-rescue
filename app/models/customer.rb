# == Schema Information
#
# Table name: customers
#
#  id                 :bigint           not null, primary key
#  stripe_customer_id :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Customer < ApplicationRecord
end
