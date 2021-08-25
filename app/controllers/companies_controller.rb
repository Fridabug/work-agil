class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
    @job = Job.new
  end

  def create
    @company = Company.new(company_params)
    # if @company.exists?(params[:email])
      if @company.save
        redirect_to new_company_job_path(@company)
      else
        render 'companies/new'
      end
    # else
    #   @company = Company.where((params[:email]) == 'email')
    #   redirect_to new_company_job_path(@company)
    # end
  end

  private

  def job_params
    params.permit(:title, :category, :applying, :description, :company_id)
  end

  def company_params
    params.require(:company).permit(:name, :statement, :photo, :description, :email, :url,
                                    job_attributes: %i[id title category applying description])
  end
end
