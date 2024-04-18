class CompaniesController < ApplicationController

  def index
     @companies = Company.all
  end

  def show
    @companies = Company.find(params[:id])
  end





  private



  def company_params
    params.require(:company).permit(:name, :sector, :address)
  end

end
