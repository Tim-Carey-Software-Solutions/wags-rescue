# frozen_string_literal: true

class DrawerComponent < ViewComponent::Base
  def initialize(current_user:, user_signed_in:, home: false, my_yield: nil)
    @home = home
    @my_yield = my_yield
    @current_user = current_user
    @user_signed_in = user_signed_in
  end

  def website_link
    'https://bold-star-9293.fly.dev/'
  end
end
