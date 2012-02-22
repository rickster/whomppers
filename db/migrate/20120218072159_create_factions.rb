class CreateFactions < ActiveRecord::Migration
  def change
    create_table :factions do |t|
      t.string :faction_name, :null=>false
      t.text :faction_description, :null=>false
      t.timestamps
    end
  end
end
