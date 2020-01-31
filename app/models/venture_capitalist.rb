class VentureCapitalist
    attr_accessor :name, :total_worth

    @@all =[]

    def initialize(name,total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    #INSTANCE METHODS

    def offer_contract(start_up,type,investment)
        investment = investment.to_f
        FundingRound.new(start_up,self,type,investment)
    end

    def funding_rounds
        FundingRound.all.select do |fr|
            fr.venture_capitalist == self
        end
    end

    def portfolio
       result = funding_rounds.map do |fr|
            fr.start_up
       end.uniq
    end

    def biggest_investment
        funding_rounds.max do |fr|
            fr.investment
        end 
    end

    def invested(domain)
        total = 0
        funding_rounds.each do |fr|
            if fr.start_up.domain == domain
                total += fr.investment
            end
        end
        total
    end

  
    #CLASS METHODS

    def self.all
        @@all
    end

    def self.tres_commas_club
        @@all.select do |vc|
            vc.total_worth > 1000000000
        end
    end

end
