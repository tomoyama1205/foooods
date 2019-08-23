class ShopsController < ApplicationController
  before_action :authenticate_user!, only: :search

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def search
    @shops = Shop.where('title LIKE(?)', "%#{params[:keyword]}%")
  end
  
end
