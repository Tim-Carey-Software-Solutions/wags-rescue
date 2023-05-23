class CollapseComponent < ViewComponent::Base

  def initialize(title:, extra_container_classes: nil, extra_title_classes: "font-medium", extra_content_classes: nil)
    @title = title
    @extra_container_classes = extra_container_classes
    @extra_title_classes = extra_title_classes
    @extra_content_classes = extra_content_classes
  end
end