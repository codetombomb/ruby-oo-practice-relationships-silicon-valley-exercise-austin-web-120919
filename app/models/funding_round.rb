class FundingRound
    attr_reader :start_up, :venture_capitalist
    attr_accessor :type, :investment

    @@all = []

    def initialize(start_up,venture_capitalist,type,investment)
        @start_up = start_up
        @venture_capitalist = venture_capitalist
        @type = type
        if investment <= 0 
            puts "must be greater than zero"
        else
            @investment = investment.to_f
            @@all << self
        end
    end

    #INSTANCE METHODS


    #CLASS METHODS
    def self.all
        @@all
    end



end
