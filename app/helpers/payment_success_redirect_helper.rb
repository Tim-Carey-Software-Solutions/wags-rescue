module PaymentSuccessRedirectHelper
  def donate_page_success_redirect
    redirect_to donate_path, notice: "Thanks for your donation!"
  end

  def wishlist_page_success_redirect
    redirect_to wishlist_path, notice: "Thanks for your donation!"
  end


end