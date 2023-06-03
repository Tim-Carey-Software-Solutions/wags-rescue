class DrawerComponent < ViewComponent::Base

  def initialize(home: false, my_yield: nil, current_user:, user_signed_in:)
    @home = home
    @my_yield = my_yield
    @user_signed_in = user_signed_in
    @current_user = current_user
  end

  def website_link
    "https://bold-star-9293.fly.dev/"
  end
end
