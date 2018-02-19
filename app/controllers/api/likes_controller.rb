class Api::LikesController < ApplicationController
  def create
    @like = Like.new
    @like.user_id = params[:user_id]
    @like.meme_id = params[:meme_id]
    @like.liked = params[:liked]
    if @like.save
      render 'api/memes/show'
    else
      render json: @like.errors.full_messages, status: 401
    end
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, meme_id: params[:id])
    if @like
      @like.destroy!
      render 'api/memes/show'
    else
      render json: ["could not find that like"], status: 400
    end
  end
end
