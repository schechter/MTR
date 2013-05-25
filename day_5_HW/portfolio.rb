require 'yahoofinance'

class Portfolio
    attr_accessor :name, :stocks, :owner

    def initialize(name, owner, stocks = {})
        @name = name
        @owner = owner
        @stocks = stocks
    end
    
    def self.get_current_stock_price(stock_name)
        # Class variable because behavior does not change between instances
        YahooFinance::get_quotes(YahooFinance::StandardQuote, stock_name)[stock_name].lastTrade
    end

    def buy_stock(stock_name, num_stocks)
        total_cost = Portfolio.get_current_stock_price(stock_name) * num_stocks
        raise(RuntimeError, "Insufficient account funds.") if @owner.balance < total_cost
    end
end
