class MessagesController < ApplicationController
  def index
    @day = Day.new
  end
end
