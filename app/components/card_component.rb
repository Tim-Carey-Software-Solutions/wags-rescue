class CardComponent < ViewComponent::Base

  def initialize(title:, extra_title_classes: nil, extra_body_classes: nil, extra_container_classes: "sm:w-96", image_src: nil, image_alt: nil)
    @title = title
    @image_src = image_src
    @image_alt = image_alt
    @extra_title_classes = extra_title_classes
    @extra_body_classes = extra_body_classes
    @extra_container_classes = extra_container_classes
  end
end
