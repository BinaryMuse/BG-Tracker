class AddSeenToRealms < ActiveRecord::Migration
  def change
    add_column :realms, :seen, :boolean
  end
end
