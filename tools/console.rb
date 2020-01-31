require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
su_1 = Startup.new("Microsoft", "Bill", "Software")
su_2 = Startup.new("Apple", "Steve", "Computers")
su_3 = Startup.new("Racing", "Valentino", "Computers")

vc_1 = VentureCapitalist.new("Blackstone", 2000000000)
vc_2 = VentureCapitalist.new("Tom", 1023454)
vc_3 = VentureCapitalist.new("Rick", 23497342)

fr_1 = FundingRound.new(su_1,vc_1,"angel",5000000)
fr_2 = FundingRound.new(su_1,vc_2,"Series A",1)
fr_3 = FundingRound.new(su_2,vc_3,"Series B",5000000)
fr_4 = FundingRound.new(su_1,vc_3,"Series C",6000000)
fr_5 = FundingRound.new(su_2,vc_3,"Series D",10000000)
fr_6 = FundingRound.new(su_1,vc_1,"Series D",-1)
fr_7 = FundingRound.new(su_2,vc_2,"Series C",2)
fr_8 = FundingRound.new(su_3,vc_2,"Series C",3)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line