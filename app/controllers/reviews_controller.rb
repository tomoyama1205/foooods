class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: :new
  before_action :ranking

  def new
    @shop = Shop.find(params[:shop_id])
    @review = Review.new
  end

  def create
    @review = Review.new(create_params)
    if @review.save
      redirect_to root_path, notice: '投稿が完了しました'
    else
      redirect_to new_shop_review_url, alert: '投稿内容を入力してください'
    end
  end

  def destroy
    review = Review.find(params[:id])
    if review.user_id == current_user.id
      review.destroy
    end
    redirect_to user_path(current_user.id), notice: '投稿を削除しました'
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.user_id == current_user.id
      @review.update_attributes(review_params)
    end
      redirect_to user_path(current_user.id), notice: '投稿を編集しました'
  end

  private

  def create_params
    params.require(:review).permit(:rate, :review).merge(shop_id: params[:shop_id], user_id: current_user.id)
  end

  def review_params
    params.require(:review).permit(:rate, :review)
  end

  def ranking
    shop_ids = Review.group(:shop_id).order('average_rate DESC').limit(3).average(:rate).keys
    @ranking = shop_ids.map { |id| Shop.find(id) }
  end
end
