class AssetMailer < ApplicationMailer

  def request_mail(purchase)
    @purchase = purchase
    admin = User.find(admin=true)
    mail(to: admin.email, subject: 'Request for Asset Purchase.')
  end

  def purchase_reqest_reply(purchase)
    @purchase = purchase
    @user = @purchase.user
    mail(to: @user.email, subject: 'Respone for the Request of Asset Purchase.')
  end

  def use_request
  end

  def use_response
  end
  
end
