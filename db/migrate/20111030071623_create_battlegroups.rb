class CreateBattlegroups < ActiveRecord::Migration
  def change
    create_table :battlegroups do |t|
      t.string :name

      t.timestamps
    end
  end
end
