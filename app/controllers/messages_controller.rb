class MessagesController < ApplicationController

  respond_to :json

  def index
    @messages = Message.all
  end

  def create
    @message = Message.new(message_params)
    @message.save
    respond_with @message
  end

  private

  def message_params
    params.require(:message).permit(:owner, :content)
  end
end
