class Race < ActiveRecord::Base

  has_many :horse_race, dependent: :destroy
  has_many :horses, through :horse_races

end
