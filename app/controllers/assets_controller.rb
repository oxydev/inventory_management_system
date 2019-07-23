class AssetsController < ApplicationController
  
  def index
    @assets = Asset.all
  end

  def new
    @asset = Asset.new
  end

  def create
    binding.pry
    @asset = Asset.new(asset_params)
    if @asset.save
      redirect_to(assets_path)
    else
      render('new')
    end
  end

  private

    def asset_params
      params.require(:asset).permit(:asset_name, :asset_code, :date_of_purchase)
    end

end
