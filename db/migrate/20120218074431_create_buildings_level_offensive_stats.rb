class CreateBuildingsLevelOffensiveStats < ActiveRecord::Migration
  def change
    create_table :buildings_level_offensive_stats do |t|
      t.integer :damage, :null=>false
      t.integer :speed, :null=>false
      t.integer :range, :null=>false
      t.integer :radius
      t.string :status_modifier
      t.integer :level_id, :null=>false
      t.timestamps
    end
  end
end
