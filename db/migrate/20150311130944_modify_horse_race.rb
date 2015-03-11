class ModifyHorseRace < ActiveRecord::Migration
  def change
    add_column :horse_races, :jockey, :string
    add_column :horse_races, :basis_weight, :string
    add_column :horse_races, :horse_number, :integer
    add_column :horse_races, :popularity, :float
    add_column :horse_races, :order, :integer
    add_column :horse_races, :time, :integer
    add_column :horse_races, :margin, :float
    add_column :horse_races, :three_furlong, :float
    add_column :horse_races, :weight, :integer
    add_column :horse_races, :weight_gap, :integer
    add_column :horse_races, :reward, :integer
  end
end
