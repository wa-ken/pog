# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = ["小見", "健斗", "芳本", "和田"]

users.each do |user|
	User.create(:name => user)
end


data = {
	"2012104552" => "芳本",
	"2012104168" => "芳本",
	"2012109098" => "芳本",
	"2012104604" => "芳本",
	"2012104677" => "芳本",
	"2012104301" => "芳本",
	"2012104521" => "芳本",
	"2012105806" => "芳本",
	"2012104908" => "芳本",
	"2012102292" => "芳本",
	"2012103981" => "和田",
	"2012104944" => "和田",
	"2012104557" => "和田",
	"2012104657" => "和田",
	"2012104671" => "和田",
	"2012104278" => "和田",
	"2012104733" => "和田",
	"2012104860" => "和田",
	"2012101601" => "和田",
	"2012104929" => "和田",
	"2012104511" => "小見",	
	"2012104757" => "小見",	
	"2012104676" => "小見",	
	"2012104238" => "小見",	
	"2012104730" => "小見",	
	"2012104747" => "小見",	
	"2012105584" => "小見",	
	"2012101386" => "小見",	
	"2012104823" => "小見",	
	"2012104087" => "小見",
	"2012104061" => "健斗",	
	"2012100637" => "健斗",	
	"2012104217" => "健斗",	
	"2012104688" => "健斗",	
	"2012104064" => "健斗",	
	"2012104833" => "健斗",	
	"2012105276" => "健斗",	
	"2012104448" => "健斗",	
	"2012104889" => "健斗",
	"2012103841" => "健斗"
}

data.each do |key, data|

	user = User.find_by_name(data)

	p user.name

	UserHorse.create(:blood_number => key, :user => user)

end

