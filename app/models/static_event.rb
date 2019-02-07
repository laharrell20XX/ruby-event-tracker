class StaticEvent < ApplicationRecord
    def self.daily_events(day, event_type)
        where("updated_at >= ? AND updated_at <= ? AND event_type = ?", day, day + 1.day, event_type)
    end
end
