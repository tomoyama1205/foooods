class ShopsController < ApplicationController

  def index
    @shops = Shop.find(1)
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def search
  end
  
end
