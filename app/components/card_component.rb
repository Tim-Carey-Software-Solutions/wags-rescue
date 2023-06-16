# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  attr_reader :title_link

  def initialize(title:, html_id: nil, extra_title_classes: nil, extra_body_classes: nil,
                 extra_container_classes: 'sm:w-96', image_src: nil, image_alt: nil)
    @title = title
    @image_src = image_src
    @image_alt = image_alt
    @extra_title_classes = extra_title_classes
    @extra_body_classes = extra_body_classes
    @extra_container_classes = extra_container_classes
    @html_id = html_id
  end

  def is_title_link?
    title_link.present?
  end
end
