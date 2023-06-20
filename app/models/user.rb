# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  admin                  :boolean          default(FALSE)
#  provider               :string
#  uid                    :string
#  name                   :string
#
class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :omniauthable,
         omniauth_providers: %i[google_oauth2]

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    user ||= User.create(name: data['name'],
                         email: data['email'],
                         password: Devise.friendly_token[0, 20],
                         provider: access_token.provider,
                         uid: access_token.uid)
    user
  end
end
