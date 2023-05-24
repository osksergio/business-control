# frozen_string_literal: true

# controller companies
class CompaniesController < ApplicationController
  def index
    companies = Company.all
    render json: companies.select('id', 'corporate_name', 'fantasy_name', 'email', 'is_active'), status: :ok
  end

  def show
    if Company.exists?(params[:id])
      company = Company.find(params[:id])
      render json: { corporate_name: company.corporate_name, fantasy_name: company.fantasy_name,
                     email: company.email, is_active: company.is_active }, status: :ok
    else
      render json: { status: 'Error', message: 'Company not found' }, status: :unprocessable_entity
    end
  end

  def destroy
    if Company.exists?(params[:id])
      company = Company.find(params[:id])
      if company.destroy!
        render json: { status: 'Success', message: 'Successfully deleted company' }, status: :ok
      else
        render json: { status: 'Error', message: 'An error occurred while deleting the company' }, status: :bad_request
      end
    else
      render json: { status: 'Error', message: 'Company not found' }, status: bad_request
    end
  end
end
