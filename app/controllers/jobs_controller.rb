class JobsController < ApplicationController
  def index
    @jobs = Job.where(status: 'payed/featured')
    @jobs = Job.where(status: 'payed')
  end

  def new
    @job = Job.new
    @job.company = Company.find(params[:company_id])
  end

  def create
    @job = Job.new(job_params)
    @company = Company.find(params[:company_id])
    @job.company = @company
    if @job.save
        redirect_to company_preview_path(@job, @company)
      else
        render 'jobs/new', notice: "Ups, there were an error. Please, try again."
    end
  end

  def show
    @job = Job.find(params[:id])
    @company = @job.company
  end

  def preview
    @job = Job.find(params[:id])
    @company = @job.company
  end

  private

  def job_params
    params.require(:job).permit(:title, :category, :applying, :description)
  end
end
