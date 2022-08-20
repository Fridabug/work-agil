# Preview all emails at http://localhost:3000/rails/mailers/new_posting_mailer
class NewPostingMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/new_posting_mailer/pending-posting
  def pending_posting
    @company = Company.first
    NewPostingMailer.with(company: @company).pending_posting
  end

  # Preview this email at http://localhost:3000/rails/mailers/new_posting_mailer/notify_user
  def notify_user
    @company = Company.first
    NewPostingMailer.with(company: @company).notify_user
  end

end
