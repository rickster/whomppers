class CreateUnitsLevelBaseUnitStats < ActiveRecord::Migration
  def change
    create_table :units_level_base_unit_stats do |t|
      t.decimal :movement_speed, :precision => 15, :scale => 10, :default=>'0.0'
      t.decimal :health_points, :precision => 15, :scale => 10, :default=>'0.0'
      t.decimal :build_time, :precision => 15, :scale => 10, :null=>false
      t.timestamps
    end
  end
end
