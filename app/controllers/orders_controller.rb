class OrdersController < ApplicationController

  def index
    @orders = Order.all
    render json: @orders
  end

  def filter_by_user
    user = User.find(params[:user_id])
    @orders = user.order
    render json: @orders
  end
end
