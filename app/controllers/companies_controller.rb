class CompaniesController < ApplicationController
  def show

  end

  def new
    @job = Job.new
  end

  def create
    @company = Company.new
  end


end
