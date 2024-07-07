class OrdersController < ApplicationController

  # GET /orders
  def index
    @orders = Order.all
    render json: @orders
  end

  # GET /orders/filter_by_user/{:user_id}
  def filter_by_user
    user = User.find(params[:user_id])
    @orders = user.order
    render json: @orders
  end

  # POST /orders
  def create
    @order = Order.new(order_params)
    cost = @order.product.price * @order.quantity_sold
    if(@order.user.wallet >= cost) && (@order.product.quantity >= @order.quantity_sold)
      if @order.save
        update_product_quantities(@order)
        update_user_wallet(@order)
        render json: @order, status: :created, location: @order
      else
        render json: @order.errors, status: :unprocessable_entity
      end
    else
      render json: @order.errors, status: :unauthorized
    end
  end

  # DELETE /orders/delete_by_user/:user_id
  def destroy_by_user
    user_id = params[:user_id]
    orders = Order.where(user_id: user_id)
    if orders.empty?
      render json: { error: "No orders found for user with id #{user_id}" }, status: :not_found
    else
      orders.destroy_all
      head :no_content
    end
  end



  private

  def order_params
    params.require(:order).permit(:user_id, :product_id, :quantity_sold)
    # params.require(:user_id, :product_id, :quantity_sold)
  end

  def update_product_quantities(order)
    product = order.product
    product.quantity -= order.quantity_sold
    product.save
  end

  def update_user_wallet(order)
    user = order.user
    user.wallet -= (order.quantity_sold * order.product.price)
    user.save
  end
end
