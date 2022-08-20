class Company < ApplicationRecord
  has_many :jobs, inverse_of: :company
  has_one_attached :photo
  validates :email, presence: true
  validates :name, presence: true
  accepts_nested_attributes_for :jobs, reject_if: :all_blank
  validates_associated :jobs
  after_create :send_emails

  # def jobs_attributes=(jobs_attributes)
  #   jobs_attributes.each do |i, job_attributes|
  #     self.jobs.build(job_attributes)
  #   end
  # end

  def new?(email)
    @company = Company.new
    [] << Company.all.find_index { |c| c.email == email }
    [].size <= 1
  end

  def send_emails
    NewPostingMailer.with(company: self).notify_user.deliver_now
    NewPostingMailer.with(company: self).pending_posting.deliver_now
  end
end
