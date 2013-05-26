require_relative 'portfolio'

class Account
  attr_accessor :name, :portfolios, :balance

  def initialize(name, portfolios= {},  balance)
    @name = name
    @portfolios = portfolios
    @balance = balance
  end
end
