class CreateBuildingsLevelDefensiveStats < ActiveRecord::Migration
  def change
    create_table :buildings_level_defensive_stats do |t|
      t.integer :armor_points, :null=>false
      t.integer :health_points, :null=>false
      t.integer :armor_type, :null=>false
      t.boolean :is_reinforced, :default=>false
      t.integer :level_id
      t.timestamps
    end
  end
end
