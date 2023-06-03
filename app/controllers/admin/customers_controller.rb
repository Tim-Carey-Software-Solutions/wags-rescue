class Admin::CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :destroy]

  def index
    @customers = Customer.all
  end

  def show

  end

  def destroy
    @customer.destroy

    respond_to do |format|
      format.html { redirect_to admin_customers_path }
    end
  end

  private

  def set_customer
    @customer = Customer.find(params[:id])
  end
end
