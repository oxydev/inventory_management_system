class PurchaserequestsController < ApplicationController
  def index
  end

  def show
  end
  
  def new
    @user = User.find(params[:user_id])
    @purchase = @user.purchaserequests.new
  end
  
  def create
    @user = User.find(params[:user_id])
    @purchase = @user.purchaserequests.new(purchase_paramas)
    @purchase.status = 0
    
    if @purchase.save 
      AssetMailer.request_mail(@purchase).deliver!
      redirect_to authenticated_root_path
    else
      render ('new')
    end

  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

  def purchase_paramas
    params.require(:purchaserequest).permit(:asset, :price, :link, :description)
  end
end
