class StaticEventStatistic < ApplicationRecord
    def self.update_ev(event_type)
        event = self.find_by event_type: event_type
        event.update(times_triggered: event.times_triggered + 1)
    end
end
