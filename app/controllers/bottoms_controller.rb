class BottomsController < ApplicationController
  def index
    @category3 = Item.where(category_id: '3')
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

  def destroy
    @item = Item.find(params[:id])
    redirect_to bottoms_path if @item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:category_id, :color_id, :brand, :size, :memo, :image)
  end
end
