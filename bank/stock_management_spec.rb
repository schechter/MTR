require_relative 'account'
require_relative 'portfolio'



describe Account do
  describe 'makes account' do
    it 'builds an instance of an Account with a name, hash of portfoliols and balance' do
      account = Account.new('Mikes account',500)
      account.should be_instance_of Account
      account.name.should eq('Mikes account')
      account.balance.should eq(500)
      account.portfolios.should be_instance_of(Hash)
      #account.name.should eq('mikes account')
    end
  end
end

describe Portfolio do
  describe 'makes a portfolio' do
    it 'with a name and stocks(as a Hash)' do
      portfolio1 = Portfolio.new('port1')
      portfolio1.should be_instance_of Portfolio
      portfolio1.name.should eq('port1')
      portfolio1.stocks.should be_instance_of(Hash)
    end
    it ' has an owner that is an Account' do
      account1=Account.new('MTC', 500)
      portfolio1 = Portfolio.new('port1', 500, account1)
      portfolio1.owner.should eq(account1)
      portfolio1.owner.should be_instance_of Account
    end
  end
end
