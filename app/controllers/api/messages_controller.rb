class Api::MessagesController < ApplicationController
  def index
    @messages = Match.find(params[:id]).messages
  end
end
