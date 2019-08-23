class ReviewsController < ApplicationController
  def new
    @shop = Shop.find(params[:shop_id])
    @review = Review.new
  end
  def create
    Review.create(create_params)
    redirect_to root_path
  end

  private
  def create_params
    params.require(:review).permit(:rate, :review)
  end
end
