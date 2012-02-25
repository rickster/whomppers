class CreateBuildingsLevelOffensiveStats < ActiveRecord::Migration
  def change
    create_table :buildings_level_offensive_stats do |t|
      t.decimal :damage, :precision => 15, :scale => 10, :default=>'0.0'
      t.decimal :speed, :precision => 15, :scale => 10, :default=>'0.0'
      t.decimal :range, :precision => 15, :scale => 10, :default=>'0.0'
      t.decimal :radius, :precision => 15, :scale => 10, :default=>'0.0'
      t.decimal :damange_type_id, :null=>false
      t.integer :level_id, :null=>false
      t.timestamps
    end
  end
end
