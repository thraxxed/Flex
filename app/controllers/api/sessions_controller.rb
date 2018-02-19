class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(params[:username], params[:password])
    if @user
      login(@user)
      render :show
    else
      render json: ['Incorrect Username or Password'], status: 401
    end
  end

  def destroy
    logout
    render json: { message: 'Logged Out.' }
  end
end
