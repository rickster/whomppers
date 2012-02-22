class CreateBuldings < ActiveRecord::Migration
  def change
    create_table :buldings do |t|
      t.string :name, :null=>false
      t.string :description, :null=>false
      t.string :building_type, :null=>false
      t.boolean :is_attackable, :default=>false
      t.integer :faction_id, :null=>false
      t.timestamps
    end
  end
end
