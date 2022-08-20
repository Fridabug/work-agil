class NewPostingMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.new_posting_mailer.pending-posting.subject
  #
  def pending_posting
    @company = params[:company]

    mail( to: "friederikespring@posteo.de", subject: 'New pending posting')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.new_posting_mailer.notify_user.subject
  #
  def notify_user
    @company = params[:company]

    mail(to: @company.email, subject: 'Welcome to the agil community')
  end
end
