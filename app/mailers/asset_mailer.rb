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

  def use_request(item,user)
    @item = item
    @user = user
    admin = User.find(admin=true)
    mail(to: admin.email, subject: 'Request for Use of Asset.')
  end

  def use_response(item, user, responce)
    binding.pry
    @item = item
    @user = user
    @responce = responce
    mail(to: @user.email, subject: 'Response for the Use of the Asset.')
  end
  
end
