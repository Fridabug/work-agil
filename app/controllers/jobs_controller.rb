class JobsController < ApplicationController
  def index
    @jobs = Job.where(status: 'payed/featured')
    @jobs = Job.where(status: 'payed')
  end

  def new
    @job = Job.new
    @company = @job.build_company
  end

  def create
    @job = Job.new(job_params)
    if @job.save
        redirect_to company_preview_path(@company, @job)
      else
        render 'jobs/new', notice: "Ups, there were an error. Please, try again."
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  def preview
    @job = Job.find(params[:id])
    @company = @job.company
  end

  private

  def job_params
    params.require(:job).permit(:title, :category, :applying, :description,
      company_attributes: [:id, :name, :statement, :photo, :description, :email, :url])
  end
end
