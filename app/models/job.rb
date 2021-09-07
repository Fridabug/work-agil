class Job < ApplicationRecord
  belongs_to :company
  accepts_nested_attributes_for :company
  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: ['coaching', 'design'] }

  default_scope { order(created_at: :desc) }

  def new?
    Job.where('created_at >= ?', 2.weeks.ago)
  end

  def featured?
    true if status == 'payed/feature'
  end
end
