class OutfitsController < ApplicationController
  def index
    @outfit = Outfit.new
  end
end

