class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
    @company.jobs.build
  end

  def create
    @company = Company.new(company_params)
    if @company.save
        # NewPostingMailer.notify_user(@company).deliver_now
        # NewPostingMailer.pending_posting(@company).deliver_now
        redirect_to job_path(@company.jobs.first[:id]), notice: "Thank you for posting. You'll receive the conformation via email."
      else
        render 'companies/new', notice: "Ups, there were an error. Please, try again."
    end
    # else
    #   @company = Company.where((params[:email]) == 'email')
    #   redirect_to new_company_job_path(@company)
    # end
  end

  private

  def company_params
    params.require(:company).permit(:name, :statement, :photo, :description, :email, :url, jobs_attributes: [:title, :category, :applying, :description, :type])
  end
end
