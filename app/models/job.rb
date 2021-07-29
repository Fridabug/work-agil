class Job < ApplicationRecord
  belongs_to :company
  validates :title, presence: :true
  validates :category, presence: :true, inclusion: { in: ['half-time', 'full-time']}

  default_scope {order(created_at: :desc)}


  def new_jobs
    Job.where('created_at >= ?', 2.weeks.ago)
  end
end
