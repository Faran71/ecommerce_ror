class ProductsController < ApplicationController

  # GET /products
  def index
    @products = Product.all
    render json: @products, status: :ok
  end

  # GET /products/{:id}
  def show
    @product = Product.find(params[:id])
    render json: @product, status: :ok
  end

  # GET /products/filter_by_category/:category
  def filter_by_category
    category = params[:category]
    products = Product.where(category: category)
    if products.empty?
      render json: {error: "no products"}, status: :not_found
    else
      render json: products, status: :ok
    end
  end

  # GET /products/filter_by_rating/:rating
  def filter_by_rating
    rating = params[:rating]
    products = Product.where(rating: rating)
    if products.empty?
      render json: {error: "no products"}, status: :not_found
    else
      render json: products, status: :ok
    end
  end

  # GET /products/filter_by_price/:min_price/:max_price
  def filter_by_price
    min_price = params[:min_price]
    max_price = params[:max_price]
    products = Product.where(price: min_price..max_price)
    if products.empty?
      render json: {error: "no products"}, status: :not_found
    else
      render json: products, status: :ok
    end
  end

  # GET /products/search/:q
  def search
    search_term = params[:q]
    products = Product.where('name ILIKE ?', "%#{search_term}%")
    if products.empty?
      render json: {error: "no products"}, status: :not_found
    else
      render json: products, status: :ok
    end
  end
end
