class UserMailer < ApplicationMailer
  default from: 'notification@agil.com'

  def pending_email
    @company = params[:company]
    mail(to: @company.email, subject: 'You almost reached the agile community')
  end
end
