class CreateUnitsLevelCityUnitStats < ActiveRecord::Migration
  def change
    create_table :units_level_city_unit_stats do |t|
      t.decimal :gather_rate, :precision => 15, :scale => 10, :default=>'0.0'
      t.integer :base_unit_stat_id
      t.timestamps
    end
  end
end
