class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  def self.find_for_google_oauth2(auth)
    admin = Admin.where(email: auth.info.email).first


    unless admin
      if Mail::Address.new(auth.info.email).domain == "interfirm.co.jp"
        admin = Admin.create!(
          name: auth.info.name,
          provider: auth.provider,
          uid: auth.uid,
          email: auth.info.email,
          password: Devise.friendly_token[0, 20])
      end
    end
  end
end
