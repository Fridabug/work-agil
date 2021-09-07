class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
    @job = @company.jobs.build
  end

  def create
    @company = Company.new(company_params)
    if @company.save
        redirect_to preview_path(@job)
      else
        render 'companies/new'
    end
    # else
    #   @company = Company.where((params[:email]) == 'email')
    #   redirect_to new_company_job_path(@company)
    # end
  end

  private

  def company_params
    params.require(:company).permit(:name, :statement, :photo, :description, :email, :url, jobs_attributes: [:id, :title, :category, :applying, :description, :company_id])
  end
end
