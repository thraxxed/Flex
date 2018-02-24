class Api::MessagesController < ApplicationController
  def index
    match = Match.find_by(user1_id: params[:id], user2_id: current_user.id)
    unless match
      match = Match.find_by(user2_id: params[:id], user1_id: current_user.id)
    end
    @messages = match.messages
  end
end
