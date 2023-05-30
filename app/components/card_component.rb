class CardComponent < ViewComponent::Base

  def initialize(title:, extra_body_classes: nil)
    @title = title
    @extra_body_classes = extra_body_classes
  end
end