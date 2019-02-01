class PagesController < ApplicationController

    def home
        @KeyboardMouseEventStatistics = KeyboardMouseEventStatistic.all
    end

    def page_clicked
        @LeftClickEventStatistic = KeyboardMouseEventStatistic.find_by event_type: 'LClick'
        @LeftClickEventStatistic.update(times_triggered: @LeftClickEventStatistic.times_triggered + 1)
        @LeftClickEventStatistic.save
        redirect_to action: :home
    end
    def spacebar_pressed
        @SpacebarEventStatistic = KeyboardMouseEventStatistic.find_by event_type: 'SpaceBarPress'
        @SpacebarEventStatistic.update(times_triggered: @SpacebarEventStatistic.times_triggered + 1)
        @SpacebarEventStatistic.save
        redirect_to action: :home
    end
end
