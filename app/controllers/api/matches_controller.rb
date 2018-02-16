class Api::MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def create
    @match = Match.new
    @match.user1 = current_user
    @match.user2 = User.find_by(username: params[:user2_id])
    if @match.save
      render 'api/matches/show'
    else
      render json: @match.errors.full_messages, status: 422
    end
  end

  def show
    @match = Match.find_by(user1_id: current_user.id, user2_id: params[:user2_id])
    render 'api/matches/show'
  end

  def destroy
    @match = Match.find_by(user1_id: current_user.id, user2_id: params[:user2_id])
    if @match
      @match.destroy!
    else
      render json: ["could not find match"], status: 400
    end
  end
end
