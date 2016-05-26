class ChangeOpenEventsToEvents < ActiveRecord::Migration
  def up
    add_column :open_events, :event, :string
    OpenEvent.update_all(event: "opened")
    rename_table :open_events, :events
  end

  def down
    # nope
  end
end
