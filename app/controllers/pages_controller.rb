class PagesController < ApplicationController

    def home
        @StaticEventDisplays = StaticEventStatistic.all
    end

    def button_clicked
        StaticEventStatistic.update_ev("ButtonClick")
        redirect_to action: :home
        StaticEvent.create(event_type: "ButtonClick")
    end
    def spacebar_pressed
        StaticEventStatistic.update_ev("SpaceBarPress")
        redirect_to action: :home
        StaticEvent.create(event_type: "SpaceBarPress")
    end
    def daily_stats
        # t = Time.now.getlocal.strftime("%F")
        t = Time.now.midnight
        @SpaceBarEventCount = StaticEvent.daily_events(t, "SpaceBarPress").count
        @ButtonClickEventCount = StaticEvent.daily_events(t, "ButtonClick").count
    end
end
