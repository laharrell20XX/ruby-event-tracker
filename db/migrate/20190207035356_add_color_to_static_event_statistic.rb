class AddColorToStaticEventStatistic < ActiveRecord::Migration[5.1]
  def change
    change_table :static_event_statistics do |t|
      t.string :color, default: ""
    end
  end
end
