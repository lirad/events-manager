module EventsHelper
  def joinable_event(user, event)
    if user == true && event.date >= Time.now
      1
    elsif user == 'Not registered' && event.date >= Time.now
      2
    elsif event.date < Time.now
      3
    else
      4
    end
  end
end
