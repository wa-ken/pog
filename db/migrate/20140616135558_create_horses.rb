class CreateHorses < ActiveRecord::Migration
  def change
    create_table :horses do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.string :status
      t.string :stable
      t.string :father
      t.string :mother
      t.string :grandfather
      t.integer :reward
      t.integer :reward2
      t.string :records
      t.string :owner
      t.string :producer

      t.timestamps
    end
  end
end
