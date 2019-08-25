class UsersController < ApplicationController
  before_action :ranking
  
  def show
  end

  private

  def ranking
    shop_ids = Review.group(:shop_id).order('average_rate DESC').limit(3).average(:rate).keys
    @ranking = shop_ids.map { |id| Shop.find(id) }
  end
end
