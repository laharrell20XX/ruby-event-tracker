class ChangeKeyboardMouseEventStatisticsToStaticEventStatistics < ActiveRecord::Migration[5.1]
  def change
    rename_table :keyboard_mouse_event_statistics, :static_event_statistics
  end
end
