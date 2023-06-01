class DrawerComponent < ViewComponent::Base

  def initialize(home: false, my_yield: nil)
    @home = home
    @my_yield = my_yield
  end

  def website_link
    "https://bold-star-9293.fly.dev/"
  end
end
