class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @events = @user.event_atendees
  end

  def show; end
end
