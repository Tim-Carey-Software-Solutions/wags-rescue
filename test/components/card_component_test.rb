require "test_helper"

class CardComponentTest < ViewComponent::TestCase
  def test_render_component
    render_inline(CardComponent.new(title: "my title"))

    assert_selector "h2[class='card-title']", text: "my title"
  end
end
