class Api::MessagesController < ApplicationController
  def index
    match = Match.find_by(user1_id: params[:id], user2_id: current_user.id)
    unless match
      match = Match.find_by(user2_id: params[:id], user1_id: current_user.id)
    end
    unless match.messages.length == 0
      @messages = match.messages.reverse[0..11].reverse
    else
      @messages = []
    end
  end

  def create
    @message = Message.new(body: params[:body])
    match = Match.find_by(user1_id: params[:id], user2_id: current_user.id)
    unless match
      match = Match.find_by(user2_id: params[:id], user1_id: current_user.id)
    end
    @message.match = match
    @message.user = current_user
    if @message.save
      render json: 'hey'
    else
      render json: @message.errors.full_messages, status: 422
    end
  end
end
