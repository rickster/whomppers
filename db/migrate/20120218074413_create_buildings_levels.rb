class CreateBuildingsLevels < ActiveRecord::Migration
  def change
    create_table :buildings_levels do |t|
      t.integer :level, :null=>false
      t.integer :building_id, :null=>false
      t.string :level_skin, :null=>false
      t.timestamps
    end
  end
end
