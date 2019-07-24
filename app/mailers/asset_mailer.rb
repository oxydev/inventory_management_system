class AssetMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.asset_mailer.request_mail.subject
  #
  def request_mail
    @greeting = "Hi"
    admin = User.find(admin=true)
    mail(to: admin.email, subject: 'Request for Asset Use.')
  end
end
