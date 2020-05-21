class MessagesController < ApplicationController

  def index
    @day = Day.new
    @messages = Message.all.order(dayname: "DESC")
  end

  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to root_path
  end

  private

  def message_params
    params.require(:message).permit(:dayname, :absence, :body).merge(user_id: current_user.id)
  end
end
