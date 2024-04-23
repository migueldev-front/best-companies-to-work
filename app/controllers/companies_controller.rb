class CompaniesController < ApplicationController

  def index
     @companies = Company.all
  end

  def show
    @companies = Company.find(params[:id])
  end

  def new
    @companies = Company.new
  end

  def create
    @companies = Company.new(company_params)
   

    if @companies.save
      redirect_to companies_path, notice: "Company was created"
    else
      render :new, status: :unprocessable_entity
    end
  end



  private



  def company_params
    params.require(:company).permit(:name, :sector, :address)
  end

end
