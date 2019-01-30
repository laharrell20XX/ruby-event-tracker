class PagesController < ApplicationController

    def home
        @LeftClickEventStatistic = KeyboardMouseEventStatistic.find_by event_type: 'LClick'
    end

    def page_clicked
        @LeftClickEventStatistic = KeyboardMouseEventStatistic.find_by event_type: 'LClick'
        @LeftClickEventStatistic.update(times_triggered: @LeftClickEventStatistic.times_triggered + 1)
        @LeftClickEventStatistic.save
        render 'home'
    end
end
