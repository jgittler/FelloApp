class AddOpenEvents < ActiveRecord::Migration
  def up
    create_table :open_events do |t|
      t.string :city
      t.string :country
      t.string :region
      t.string :recipient
      t.string "device-type"
      t.string "client-name"
      t.string "client-os"

      t.timestamps null: false
    end
  end

  def down
    drop_table :open_events
  end
end
