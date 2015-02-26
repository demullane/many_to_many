class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)

    if @company.save
      redirect_to companies_path, notice: "Company was added successfully."
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  private
  def company_params
    params.require(:company).permit(:name, :catch_phrase, :suffix)
  end

end
