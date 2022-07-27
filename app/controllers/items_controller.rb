class ItemsController < ApplicationController
  def index
    @category2 = Item.where(category_id: '2')
    @category3 = Item.where(category_id: '3')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private

  def item_params
    params.require(:item).permit(:category_id, :color_id, :brand, :size, :memo, :image)
  end
end
