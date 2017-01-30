class MessagesController < ApplicationController
  def index
  end

  def new
    @message = Message.new
  end

  def create
    Message.create(message_params)
  end

    private
  def message_params
    params.require(:message).permit(:user_name, :format_id, :text, :image).merge(user_id: current_user.id)
  end
end
