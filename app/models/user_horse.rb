class UserHorse < ActiveRecord::Base
  belongs_to :user


  def horse
    Horse.find_by_id(self.blood_number)
  end


end
