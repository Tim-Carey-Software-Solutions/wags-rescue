class CardComponent < ViewComponent::Base

  def initialize(title:, extra_body_classes: nil, extra_container_classes: "sm:w-96")
    @title = title
    @extra_body_classes = extra_body_classes
    @extra_container_classes = extra_container_classes
  end
end
