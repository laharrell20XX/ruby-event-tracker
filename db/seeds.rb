# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
button_click_event =  StaticEventStatistic.find_or_create_by(:event_type => 'ButtonClick')
spacebar_event = StaticEventStatistic.find_or_create_by(:event_type => 'SpaceBarPress')
box_color_change_event = StaticEventStatistic.find_or_create_by(:event_type => 'BoxRecolored', :color => "black")