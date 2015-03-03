class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      
      t.date :date
      t.string :name
      t.string :meeting
      t.string :distance
      t.string :track_condition

      t.timestamps
    end
  end
end
