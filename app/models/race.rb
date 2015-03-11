class Race < ActiveRecord::Base

  require 'csv'
  require 'kconv'

  has_many :horse_race, dependent: :destroy
  has_many :horses, through: :horse_races
  
  def self.upload(filename)
    filename_text = filename.read

    CSV.parse(Kconv.toutf8(filename_text)) do |row|
      if row[0] == nil
        if Race.exists?(:race_id => row[26]) then
          race = Race.find_by race_id: row[26]
        else
          race = Race.new
        end
          race.race_id = row[26]
          race.date = row[1]
          race.name = row[3]
          race.meeting = row[2]
          race.distance = row[13]
          race.track_condition = row[14]
          race.save
      end
    end
  end
      
end
