class BottomsController < ApplicationController
  def index
    @category3 = Item.where(category_id: "3")
  end

  def show
    @item = Item.find(params[:id])
  end
end
