class PiggyBank
attr_reader :total

    def initialize
        @total = []
    end

    def add(coin = nil)
        @total << coin
        
    end

    def shake
        if @total == []
        ""
        else
        "Clink!"
        end
    end

    def break
        @total.reduce(:+)
    end

end