class Horse < ActiveRecord::Base

  require 'csv'

  def self.upload

    CSV.foreach("data2.csv") do |row|
      if row[0] != "血統登録番号" then
        if Horse.exists?(:id => row[0]) then
          horse = Horse.find(row[0])
        else
          horse = Horse.new
          horse.id = row[0]
        end
        horse.name = row[1]
        horse.gender = row[2]
        horse.age = row[3]
        horse.status = row[4]
        horse.stable = row[5]
        horse.father = row[6]
        horse.mother = row[7]
        horse.grandfather = row[8]
        horse.reward = row[10]
        horse.reward2 = row[11]
        horse.records = row[12]
        horse.owner = row[13]
        horse.producer = row[14]
        horse.save
      end
    end
  end
    


end
