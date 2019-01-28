class PagesController < ApplicationController

    def home
        @LeftClickEventStatistic = KeyboardMouseEventStatistic.find_by event_type: 'LClick'
    end
end
