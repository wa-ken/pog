class HorseRace < ActiveRecord::Base

  belongs_to :horse
  belongs_to :race

  def self.upload(filename)
    filename_text = filename.read

    CSV.parse(Kconv.toutf8(filename_text)) do |row|
      if row[0] == nil
        
        # データ仕分け
        horse_data = {:id => row[27], :name=> row[4], :gender => row[5], :reward => 0, :reward2 => 0}
        race_data = {:race_id => row[26], :date => row[1], :name => row[3], :meeting => row[2], :distance => row[14]}
        horse_race_data = {:jockey => row[7], :basis_weight => row[8], :horse_number => row[10], :popularity => row[11], :order => row[12], :time => row[18], :margin => row[19], :three_furlong => row[23], :weight => row[24], :weight_gap => row[25], :reward => row[28]}        

        # レースがあるかないかを確認
        if Race.exists?(:race_id => row[26]) then
          race = Race.find_by race_id: row[26]
        else
          race = Race.create(race_data)
        end
        
        # 馬があるかないか確認
        if Horse.exists?(:id => row[27]) then
          horse = Horse.find(row[27])
        else
          horse = Horse.create(horse_data)
        end

        # 該当する戦績がないかチェック
        unless HorseRace.find_by(horse_id: horse.id, race_id: race.id) then
          horse_race = HorseRace.new(horse_race_data)
          horse_race.horse_id = horse.id
          horse_race.race_id = race.id
          horse_race.save
        end               
      end
    end
  end
end
