class TopsController < ApplicationController
  def index
    @category2 = Item.where(category_id: "2")
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to top_path
    else
      render :edit
    end
  end

  private

  def item_params
    params.require(:item).permit(:category_id, :color_id, :brand, :size, :memo, :image)
  end
end
