class AssetMailer < ApplicationMailer

  def request_mail(purchase)
    @purchase = purchase
    admin = User.find(admin=true)
    mail(to: admin.email, subject: 'Request for Asset Purchase.')
  end

end
