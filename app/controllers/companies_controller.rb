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
    @company = Company.new params[:company]
    render json: @company
  end

  def new
    @company = Company.new
  end

  def update
    @company = Company.find params[:id]
  end

  def destroy
    @company = Company.find params[:id]
    @company.destroy
  end
  
end
