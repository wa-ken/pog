class CreateHorseRaces < ActiveRecord::Migration
  def change
    create_table :horse_races do |t|
      t.references :horse, null: false
      t.references :race, null: false
      t.timestamps
    end

  add_index :horse_races, :horse_id
  add_index :horse_races, :race_id
  end
end
