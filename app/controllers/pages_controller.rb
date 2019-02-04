class PagesController < ApplicationController

    def home
        @KeyboardMouseEventStatistics = StaticEventStatistic.all
        @LeftClickCount = StaticEvent.where(event_type: 'LClick').count
        @SpaceBarPressCount = StaticEvent.where(event_type: 'SpaceBarPress').count
    end

    def page_clicked
        @LeftClickEventStatistic = StaticEventStatistic.find_by event_type: 'LClick'
        @LeftClickEventStatistic.update(times_triggered: @LeftClickEventStatistic.times_triggered + 1)
        @LeftClickEventStatistic.save
        redirect_to action: :home
        StaticEvent.create(event_type: "LClick")
    end
    def spacebar_pressed
        @SpacebarEventStatistic = StaticEventStatistic.find_by event_type: 'SpaceBarPress'
        @SpacebarEventStatistic.update(times_triggered: @SpacebarEventStatistic.times_triggered + 1)
        @SpacebarEventStatistic.save
        redirect_to action: :home
        StaticEvent.create(event_type: "SpaceBarPress")
    end
end
