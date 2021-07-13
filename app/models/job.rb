class Job < ApplicationRecord
  belongs_to :company

  def self.new_jobs
    where('created_at >= ?', 2.weeks.ago)
  end
  # scope :new_jobs, -> {where('created_at >= ?', 2.weeks.ago)}
end

