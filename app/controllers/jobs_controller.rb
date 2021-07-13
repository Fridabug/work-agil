class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
   @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    @job.save
  end


  private

  def job_params
    params.require(:job).permit(:title, :category, :applying, :description, :company_id)
  end
end
