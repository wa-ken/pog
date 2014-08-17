class User < ActiveRecord::Base
  has_many :user_horses

  def sum_rewards
    sum = 0
    self.user_horses.each do |data|
      if data.horse.present?
        sum = sum + data.horse.reward2
      end
    end
    sum
  end
end
