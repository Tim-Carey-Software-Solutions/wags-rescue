class ModalComponent < ViewComponent::Base
  def initialize(open_btn_text:, close_btn_text:)
    @open_btn_text = open_btn_text
    @close_btn_text = close_btn_text
  end
end