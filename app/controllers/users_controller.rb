class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @events = @user.attended_events
  end

  def show; end
end
