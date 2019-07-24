# Preview all emails at http://localhost:3000/rails/mailers/asset_mailer
class AssetMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/asset_mailer/request_mail
  def request_mail
    AssetMailer.request_mail
  end

end
