class Account
  attr_accessor :name, :portfolios

  def initialize(name, portfolios = {})
    @name = name
    @portfolios = portfolios
  end

end
