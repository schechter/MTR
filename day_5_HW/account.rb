class Account
    attr_accessor :name, :balance, :portfolios

    def initialize(name, balance = 0, portfolios = {})
        @name = name
        @balance = balance
        @portfolios = {}
    end

    def add_portfolio(portfolio)
        @portfolios[portfolio.name] = portfolio
    end
end
