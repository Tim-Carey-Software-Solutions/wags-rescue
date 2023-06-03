class AdminCardComponent < ViewComponent::Base

  def initialize(title:, link_text:, link_path:, current_user: nil, user_signed_in: nil, btn_path: nil)
    @user_signed_in = user_signed_in
    @current_user = current_user
    @title = title
    @link_text = link_text
    @link_path = link_path
    @btn_path = btn_path
  end
end
