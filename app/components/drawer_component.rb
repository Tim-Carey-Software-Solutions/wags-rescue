class DrawerComponent < ViewComponent::Base

  def initialize(home: false, my_yield: nil, current_user:, user_signed_in:)
    @home = home
    @my_yield = my_yield
    @current_user = current_user
    @user_signed_in = user_signed_in
  end

  def website_link
    "https://bold-star-9293.fly.dev/"
  end
end
