class CreateUserHorses < ActiveRecord::Migration	

	def change
    create_table :user_horses do |t|

			t.integer :user_id	
			t.integer :blood_number

      t.timestamps
    end
  end
end
