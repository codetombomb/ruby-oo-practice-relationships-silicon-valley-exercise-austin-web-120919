class Startup

    attr_accessor :name, :domain
    attr_reader :founder

    @@all = []

    def initialize(name,founder,domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end
    #INSTANCE METHODS

    def pivot(domain,name)
        self.domain = domain 
        self.name = name
    end

    def sign_contract(venture_capitalist,type,amount)
        FundingRound.new(self,venture_capitalist,type,amount)
    end

    def num_funding_rounds
        FundingRound.all.select do |fr|
            fr.start_up == self
        end.length
    end

    def total_funds
        total = 0        
        result = FundingRound.all.select do |fr|
            fr.start_up == self
        end
        result.each do |fr|
            total += fr.investment
        end
        total
    end

    def investors
        result = FundingRound.all.select do |fr|
            fr.start_up == self
        end
        result.map do |fr|
            fr.venture_capitalist
        end.uniq
    end

    def big_investors
        investors.find_all do |vc|
            VentureCapitalist.tres_commas_club.include?(vc)
        end
    end

    #CLASS METHODS
    def self.all 
        @@all
    end

    def self.find_by_founder(founder)
        @@all.find do |su|
            su.founder == founder
        end
    end

    def self.domains
        @@all.map do |su|
            su.domain
        end
    end
    

end
