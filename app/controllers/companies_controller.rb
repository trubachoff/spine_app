class CompaniesController < ApplicationController

  def index
    @companies = Company.all
    render json: @companies
  end

  def show
    @company = Company.find params[:id]
    render json: @company
  end

  def create
    @company = Company.new company_params
    render nothing: true
    # render json: @company
  end

  def new
    @company = Company.new
  end

  def update
    @company = Company.find params[:id]
    render nothing: true
    head :bad_request if !@company.update(user_params)
  end

  def destroy
    @company = Company.find params[:id]
    @company.destroy
  end

  def company_params
    params.require(:company).permit(:title, :phone, :phone_code)
  end

end
