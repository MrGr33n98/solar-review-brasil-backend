class Api::V1::CompaniesController < ApplicationController
  def index
    companies = Company.all
    render json: companies, each_serializer: CompanySerializer
  end

  def show
    company = Company.find(params[:id])
    render json: company, serializer: CompanySerializer
  end
end
