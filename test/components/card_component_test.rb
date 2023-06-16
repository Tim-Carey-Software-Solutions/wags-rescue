# frozen_string_literal: true

require 'test_helper'

class CardComponentTest < ViewComponent::TestCase
  def test_render_component
    render_inline(CardComponent.new(title: 'my title')) do
      'Some content!'
    end

    assert_selector '.card-title', text: 'my title'
    assert_text 'Some content!'
  end
end
