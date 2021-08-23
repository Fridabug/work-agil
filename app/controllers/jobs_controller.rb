class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
    @company = Company.new
  end

  def create
    @job = Job.new(job_params)
    @company = Company.find(params[:company_id])
    @job.company = @company
    if @job.save
      redirect_to company_preview_path(@company, @job)
    else
      render 'jobs/new'
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  def preview
    @job = Job.find(params[:id])
  end

  private

  def job_params
    params.require(:job).permit(:title, :category, :applying, :description, :company_id)
  end
end
