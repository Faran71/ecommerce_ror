class UsersController < ApplicationController

  # GET /users
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/{:id}
  def show
    @user = User.find(params[:id])
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/:id
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/{:id}
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    # @login = Login.where(user: @user)
    # @login.destroy
    head :no_content
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :orders, :wallet)
  end
end
