class StaticEventStatistic < ApplicationRecord
    def self.update_ev(event_type)
        event = self.find_by event_type: event_type
        event.update(times_triggered: event.times_triggered + 1)
    end
    def self.update_color_ev(event_type, color)
        event = self.find_by event_type: event_type
        event.update(times_triggered: event.times_triggered + 1, color: color)
    end
end
