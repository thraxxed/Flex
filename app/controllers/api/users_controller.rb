require 'open-uri'

class Api::UsersController < ApplicationController
  def create
    p params
    @user = User.new(username: params[:username], password: params[:password],
                     latitude: params[:latitude], longitude: params[:longitude])
    @user.bio = ""

    @user.age = 18
    @user.gender = "F"

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
    user_picture = params[:picture]
    user_picture_file = File.open('user_picture.png', 'wb') do|f|
      f.write(Base64.decode64(user_picture))
    end
    @user.picture = File.open('user_picture.png')
    if @user.save
      render :show
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

private
  def user_params
    params.require(:user).permit(:username, :password, :picture, :bio, :latitude, :longitude)
  end
end
