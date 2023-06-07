module QuantityHelper
  def quantity
    params[:quantity].blank? ? 1 : params[:quantity].to_i
  end
end