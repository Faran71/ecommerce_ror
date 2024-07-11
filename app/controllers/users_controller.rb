class UsersController < ApplicationController

  # GET /users
  def index
    @users = User.all
    render json: @users, status: :ok
  end

  # GET /users/{:id}
  def show
    @user = User.find(params[:id])
    render json: @user, status: :ok
  end

  # POST /users/authenticate
  def authenticate
    user = User.find_by(email: login_params[:email])
    if user&.authenticate(login_params[:password])
      render json: user, status: :accepted
    else
      render json: {error: 'Invalid username or password'}, status: :unauthorized
    end
  end

  # POST /users
  def create
    temp_user = User.find_by(email: user_params[:email])
    if temp_user
      render json: {error: 'email already in use'}, status: :not_acceptable
    else
      @user = User.new(user_params)
      if @user.save
        render json: @user, status: :created
      else
        render json: @user.errors, status: :unprocessable_entity
      end
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
    params.require(:user).permit(:first_name, :last_name, :email, :password, :wallet)
  end

  def login_params
    params.permit(:email, :password)
  end
end
