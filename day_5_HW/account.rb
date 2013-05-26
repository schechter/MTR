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

  def list_portfolios
    portfolios.keys.each {|portfolio| puts portfolio}
  end
end


class Firm
  attr_accessor :accounts

  def initialize(acconts = [])
    @accounts = acconts
  end

  def list_accounts
    @accounts.each { |a| p a.name}
  end

  def add_account(account)
    @accounts.push account
  end
end
