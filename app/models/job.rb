class Job < ApplicationRecord
  belongs_to :company

  def new_jobs
    Job.where('created_at >= ?', 2.weeks.ago)
  end
  # scope :new_jobs, -> {where('created_at >= ?', 2.weeks.ago)}
end

