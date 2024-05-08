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

  def edit
    @companies = Company.find(params[:id])
  end

  def update
    @companies = Company.find(params[:id])

    if @companies.update(company_params)
      redirect_to @companies
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @companies = Company.find(params[:id])
    @companies.destroy

    redirect_to root_path
  end



  private



  def company_params
    params.require(:company).permit(:name, :sector, :address)
  end

end
