class Api::MemesController < ApplicationController
  def index
    # @memes = Meme.all
    @memes = Meme.where.not(id: current_user.liked_memes.pluck(:id))
  end

  def create
    @meme = Meme.new(meme_params)
    if @meme.save
      render :show
    else
      render json: @meme.errors.full_messages, status: 422
    end
  end

  def show
    @meme = Meme.find(params[:id])
  end

  private
  def meme_params
    params.require(:meme).permit(:image_url)
  end
end
