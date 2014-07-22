class CustomersController < ApplicationController

  def index
    @customers = Customer.all
    render json: @customers
  end

  def show
    @customer = Customer.find params[:id]
    render json: @customer
  end

  def create
    @customer = Customer.new(customer_params)
    render nothing: true
    head :bad_request if !@customer.save
  end

  def new
    @customer = Customer.new
  end

  def update
    @customer = Customer.find params[:id]
    render nothing: true
    head :bad_request if !@customer.update(customer_params)
  end

  def destroy
    @customer = Customer.find params[:id]
    @customer.destroy
  end

  def customer_params
    params.require(:customer).permit(:name, :lastname, :email :phone, :phone_code, :user_id)
  end

end
