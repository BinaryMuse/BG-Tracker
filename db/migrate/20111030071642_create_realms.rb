class CreateRealms < ActiveRecord::Migration
  def change
    create_table :realms do |t|
      t.string :name
      t.references :battlegroup

      t.timestamps
    end
  end
end
