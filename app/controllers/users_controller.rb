class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @events_attended = @user.attended_events
    @events_created = @user.events
    @past_events_user = @user.attended_events.past_events
    @future_events_user = @user.attended_events.future_events
  end

  def show; end
end
