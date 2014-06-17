class CreateHorses < ActiveRecord::Migration
  def change
    create_table :horses do |t|
      t.string :name
      t.boolean :gender
      t.string :father
      t.string :mother
      t.integer :reward
      t.string :owner
      t.string :stable
      t.integer :number

      t.timestamps
    end
  end
end
