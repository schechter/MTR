require_relative 'account'
require_relative 'portfolio'

describe Account do
    let(:account_1) { Account.new("zlu", 3000) }
    let(:portfolio_1) { Portfolio.new("Portfolio One", account_1) }
    let(:portfolio_2) { Portfolio.new("Portfolio Two", account_1) }

    describe '#new' do
        it 'builds an account with a name, balance, and empty portfolio hash' do
            account_1.name.should eq("zlu")
            account_1.balance.should eq(3000)
            account_1.portfolios.should be_an_instance_of(Hash)
        end
    end

    describe '#add_portfolio' do
        it 'adds portfolio to account portfolios' do
            account_1.add_portfolio(portfolio_1)
            account_1.portfolios[portfolio_1.name].should eq(portfolio_1)
        end

        it 'adds 2 portfolios to account portfolios' do
            account_1.add_portfolio(portfolio_1)
            account_1.add_portfolio(portfolio_2)
            account_1.portfolios.should include(
                portfolio_1.name => portfolio_1,
                portfolio_2.name => portfolio_2
            )
        end
    end
end

describe Portfolio do
    let(:account_1) { Account.new("Account 1") }
    let(:portfolio_1) { Portfolio.new("Portfolio One", account_1) }
    before { account_1.add_portfolio(portfolio_1) }
    
    describe '#new' do
        it 'builds an account with a name, owner, and empty stock hash' do
            portfolio_1.name.should eq('Portfolio One')
            portfolio_1.stocks.should be_an_instance_of(Hash)
            portfolio_1.owner.should eq(account_1)
        end
    end

    describe '#get_current_stock_price' do
        it 'gets the current price of Apple stock in float format' do
            apple_price = Portfolio.get_current_stock_price('AAPL')
            puts "Stock price: #{apple_price}"
            apple_price.should be_an_instance_of(Float)
        end
    end

    describe '#buy_stock' do
        it 'raises RuntimeError with a message if client buys stock > her account balance' do
            expect {  portfolio_1.buy_stock('AAPL', 2) }.to raise_error(RuntimeError, "Insufficient account funds.")
        end
    end

end
