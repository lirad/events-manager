module EventsHelper
    def joinable_event(user, event)
        if user == true && event.date >= Time.now
            return 1
        elsif user == "Not registered" && event.date >= Time.now 
            return 2
        elsif event.date < Time.now    
            return 3
        else 
            return 4
        end
    end    
end
