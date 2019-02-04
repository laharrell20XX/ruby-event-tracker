class CreateStaticEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :static_events do |t|
      t.string :event_type

      t.timestamps
    end
  end
end
