class ReviewsController < ApplicationController

  # GET /reviews
  def index
    @reviews = Review.all
    render json: @reviews
  end

  # GET /reviews/filter_by_product/:product_id
  def filter_by_product
    product = Product.find(params[:product_id])
    @reviews = product.review
    if @reviews.empty?
      render json: "no reviews", status: :unauthorized
    else
      render json: @reviews, status: :ok
    end

  end

  # POST /reviews
  def create
    @review = Review.new(review_params)
    if @review.save
      render json: @review, status: :created
    else
      render status: :unauthorized
    end
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :product_id, :comment)
  end

end
