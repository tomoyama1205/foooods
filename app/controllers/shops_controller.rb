class ShopsController < ApplicationController
  before_action :authenticate_user!, only: :search
  before_action :ranking

  def index
    @shops = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def search
    @shops = Shop.where('title LIKE(?)', "%#{params[:keyword]}%")
  end

  private

  def ranking
    shop_ids = Review.group(:shop_id).order('average_rate DESC').limit(3).average(:rate).keys
    @ranking = shop_ids.map { |id| Shop.find(id) }
  end
end
