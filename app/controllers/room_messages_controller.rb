class RoomMessagesController < ApplicationController
  before_action :load_entities


  def create
    @room_message = RoomMessage.create user: current_user, 
                                       room: @room, 
                                       message: params.dig(:romm_message, :message)
  end

  protected

  def load_entities
    @room = Romm.find params.dig(:room_message, :room_id)
  end

end
