class RoomsController < ApplicationController
  def index
    @rooms = Room.public_rooms
    @users = User.all_except(@current_user)
  end

  def show
    @rooms = Room.find_by(params[:id])
  end
end
