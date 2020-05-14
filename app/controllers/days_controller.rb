class DaysController < ApplicationController

  def index
  end

  def new
    @day = Day.new
    @day.users << current_user
  end

  def create
    @day = Day.new(day_params)
    @day.save
    redirect_to root_path
  end

  def update
    @group = Group.find(params[:id])
      redirect_to root_path
  end
  
  private
  def day_params
    params.require(:day).permit(:dayname, user_ids: [])
  end

end