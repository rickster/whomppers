class CreateBuildingsLevelDefensiveStats < ActiveRecord::Migration
  def change
    create_table :buildings_level_defensive_stats do |t|
      t.decimal :armor_points, :precision => 15, :scale => 10, :default=>'0.0'
      t.decimal :health_points, :precision => 15, :scale => 10, :default=>'0.0'
      t.integer :armor_type_id, :null=>false
      t.boolean :is_reinforced, :default=>false
      t.integer :level_id
      t.timestamps
    end
  end
end
