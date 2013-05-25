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
    describe ' #list_portfolios' do
      it 'lits a portfolio in the account'do
        account_1.add_portfolio(portfolio_1)
        account_1.list_portfolios.should eq(['Portfolio One'])
      end

      it 'lists multiples portfolios' do
        account_1.add_portfolio(portfolio_1)
        account_1.add_portfolio(portfolio_2)
        account_1.list_portfolios.should eq(['Portfolio One', 'Portfolio Two'])
      end
    end
  end

  describe Portfolio do
    let(:account_1) { Account.new("Account 1") }
    let(:account_2) { Account.new("Account 2", 30000) }
    let(:portfolio_1) { Portfolio.new("Portfolio One", account_1) }
    let(:portfolio_2) { Portfolio.new("Portfolio Two", account_2) }
    before { account_1.add_portfolio(portfolio_1) }
    before { account_2.add_portfolio(portfolio_2) }


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
        apple_price.should be_an_instance_of(Float)
      end
    end

    describe '#buy_stock' do
      context 'insufficient funds stock purchase' do
        it 'raises RuntimeError with a message if client buys stock > her account balance' do
          expect {  portfolio_1.buy_stock('AAPL', 2) }.to raise_error(RuntimeError, "Insufficient account funds.")
        end
      end

      context 'sufficient funds stock purcahse' do
        it 'adds stock_name => number of shares to @stocks hash' do
          portfolio_2.buy_stock('AAPL', 4)
          portfolio_2.stocks['AAPL'].should eq(4)
        end

        it "subtracts value of stock * shares from owner's account balance" do
          prev_owner_balance = portfolio_2.owner.balance
          portfolio_2.buy_stock('AAPL', 4)
          stock_price = Portfolio.get_current_stock_price('AAPL')
          portfolio_2.owner.balance.should eq(prev_owner_balance - 4 * stock_price)
        end

        it 'makes multiple separate purcahses of the same stock' do
          prev_owner_balance = portfolio_2.owner.balance
          portfolio_2.buy_stock('AAPL', 4)
          stock_price = Portfolio.get_current_stock_price('AAPL')
          portfolio_2.buy_stock('AAPL', 3)
          portfolio_2.owner.balance.should eq(prev_owner_balance - 7 * stock_price)
        end
        it 'buys multiple stocks' do
          portfolio_2.buy_stock('APPL', 1)
          portfolio_2.buy_stock('FB', 1)
          portfolio_2.stocks.keys.count.should eq(2)
        end
      end

      describe '# lists stocks in portfolio' do
        it ' #prints a stocks in the portfolio' do
          portfolio_2.buy_stock('APPL', 1)
          portfolio_2.list_stocks_held.should eq(['APPL'])
        end
        it ' #prints all the  stocks in the portfolio' do
          portfolio_2.buy_stock('APPL', 1)
          portfolio_2.buy_stock('FB', 1)
          portfolio_2.list_stocks_held.should eq(['APPL','FB'])
        end
      end
    end

    describe 'sells stocks' do
      context 'portfolio has enough stock to sell' do
        it ' reduces numer of stocks held when selling a stock' do
          portfolio_2.buy_stock('FB', 4)
          portfolio_2.sell_stock('FB', 1)
          portfolio_2.stocks['FB'].should eq(3)
        end

        it 'adds to cash valuse of sold stock to account balance' do
          portfolio_2.buy_stock('FB', 8)
          stock_price = Portfolio.get_current_stock_price('FB')
          prev_owner_balance = portfolio_2.owner.balance
          portfolio_2.sell_stock('FB', 1)
          portfolio_2.owner.balance.should eq(prev_owner_balance + stock_price)
        end
      end

      context ' portfolio does not have enough shares for sale' do
        it 'raises RuntimeError with a message if portfolio does not have enough shares for the requested sale' do
          portfolio_2.buy_stock('FB', 4)
          expect { portfolio_1.sell_stock('AAPL', 6) }.to raise_error(RuntimeError, "Insufficient shares for this sale")
        end
      end
    end

    describe 'portfolio_value' do
      it ' lists the num shares and ticker, of one stock held and their $value' do
        portfolio_2.buy_stock('FB', 1)
        portfolio_2.portfolio_value.should eq(["Your 1 shares of FB are worth $ 24.3125 \n"])
      end
      it 'lists the num shares ect for multiple stocks' do
        portfolio_2.buy_stock('FB', 1)
        portfolio_2.buy_stock('AAPL', 1)
        portfolio_2.portfolio_value.should eq(["Your 1 shares of FB are worth $ 24.3125 \n", "Your 1 shares of AAPL are worth $ 445.15 \n"])
      end
    end

  end

end
