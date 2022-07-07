class TopsController < ApplicationController
  def index
    @category2 = Item.where(category_id: "2")
  end

  def show
    @item = Item.find(params[:id])
  end
end
