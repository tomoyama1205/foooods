class RankingsController < ApplicationController
  before_action :ranking
  def ranking
    product_ids = Review.group(:product_id).order('count_product_id DESC').limit(5).count(:shop_id).keys
    @ranking = product_ids.map { |id| Shop.find(id) }
  end
end
