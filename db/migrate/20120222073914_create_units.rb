class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name, :null=>false
      t.string :description, :null=>false
      t.string :unit_type, :null=>false
      t.integer :faction_id, :null=>false
      t.timestamps
    end
  end
end
