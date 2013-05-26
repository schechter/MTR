class Portfolio
  attr_accessor :name, :stocks, :owner

  def initialize(name, stocks={}, owner = nil)
    @name = name
    @stocks = stocks
    @owner = owner
  end
end
