class AddMoreDataToOpenEvents < ActiveRecord::Migration
  def up
    add_column :open_events, :ip, :string
    add_column :open_events, "client-type", :string
    add_column :open_events, "mailing-list", :string
  end

  def down
    remove_column :open_events, :ip
    remove_column :open_events, "client-t"
    remove_column :open_events, "mailing-list"
  end
end
