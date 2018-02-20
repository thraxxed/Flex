require 'open-uri'

class Api::UsersController < ApplicationController
  def create
    p params
    @user = User.new(username: params[:username], password: params[:password],
                     latitude: params[:latitude], longitude: params[:longitude])
    @user.bio = ""

    @user.age = 18
    @user.gender = "not_assigned"
    # @user.gender = params[:gender] if params[:gender] != ""

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
    p params
    @user = User.find(params[:id])
    if params[:picture] != ""
      user_picture = params[:picture]
      user_picture_file = File.open('user_picture.png', 'wb') do|f|
        f.write(Base64.decode64(user_picture))
      end
      @user.picture = File.open('user_picture.png')

    end
    @user.bio = params[:bio] if params[:bio] != ""
    @user.age = params[:age]
    @user.gender = params[:gender] if params[:gender] != ""
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
