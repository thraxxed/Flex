require 'open-uri'

class Api::UsersController < ApplicationController
  def create
    p params
    @user = User.new(username: params[:username], password: params[:password],
                     latitude: params[:latitude], longitude: params[:longitude])
    @user.bio = ""
    # @user.latitude = 420
    # @user.longitude = 420
    @user.age = 18
    @user.gender = "F"
    # @user.picture = File.open('http://www.dkvine.com/games/dkc/characters/images/diddy_kong_05.png')
    if @user.save
      login(@user)
      render :show
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render :show
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

private
  def user_params
    params.require(:user).permit(:username, :password, :bio, :latitude, :longitude)
  end
end
