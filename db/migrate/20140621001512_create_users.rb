class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :id_num
      t.string :pass

      t.timestamps
    end
  end
end
