class CreateUnitsLevelOffensiveUnitStats < ActiveRecord::Migration
  def change
    create_table :units_level_offensive_unit_stats do |t|
      t.integer :base_unit_stat_id
      t.timestamps
    end
  end
end
