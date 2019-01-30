class CreateKeyboardMouseEventStatistics < ActiveRecord::Migration[5.1]
  def change
    create_table :keyboard_mouse_event_statistics do |t|
      t.string :event_type
      t.integer :times_triggered, default: 0

      t.timestamps
    end
  end
end
