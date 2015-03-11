class ModifyRaces < ActiveRecord::Migration
  def change
    add_column :races, :race_id, :string
  end
end
