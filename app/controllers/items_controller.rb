class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    
    if @item.save
      redirect_to items_path
    else
      render 'new'
    end
  end

  def edit

  end

  def delete
  end

  private

  def item_params
    params.require(:item).permit(:asset, :asset_code, :date_of_purchase)
  end
end
