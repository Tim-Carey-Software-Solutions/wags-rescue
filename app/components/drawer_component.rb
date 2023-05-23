class DrawerComponent < ViewComponent::Base
  attr_reader :content

  def initialize(home: false, my_yield: nil)
    @home = home
    @my_yield = my_yield
  end
end
