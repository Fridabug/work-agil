class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
   @job = Job.new
   # @job.build_company
   @company = Company.new
  end

  def create
    @job = Job.new(job_params)
    @company = Company.new(company_params)
    @job.company = @company
    if @job.save
      redirect_to job_path(@job)
    else
      render :new
    end
  end


  private

  def job_params
    params.require(:job).permit(:title, :category, :applying, :description, :company_id)
  end

  def company_params
    params.require(:company).permit(:name, :statement, :logo, :description, :email, :url)
  end
end
