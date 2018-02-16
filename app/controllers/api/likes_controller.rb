class Api::LikesController < ApplicationController
  def create
    @like = Like.new
    @like.user_id = current_user.id
    @like.meme_id = params[:meme_id]
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
