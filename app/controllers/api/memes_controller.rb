class Api::MemesController < ApplicationController
  def index
    @memes = Meme.all
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
