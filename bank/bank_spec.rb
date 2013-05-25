require_relative 'bank'

describe Bank do  #class
  describe ' #new' do   #behavior
    it 'builds a new bank with a name' do   #expectation
      bank = Bank.new('myBank')
      bank.should be_instance_of Bank
      bank.name.should == 'myBank'
    end
  end

  describe ' # open_account' do
    it 'opens a new account' do
      bank = Bank.new('myBank')
      account = bank.open_account('mike', 500)
      #p account
      account[:name].should == 'mike'
    end

    it 'has inital balance' do
      bank = Bank.new('myBank')
      account = bank.open_account('mike', 500)
      account[:balance].should == 500
    end

    it 'opens two account' do
      bank = Bank.new('myBank')
      account1 = bank.open_account('mike', 500)
      account2 = bank.open_account('bobo', 50000)
      bank.accounts.size.should == 2
    end
  end

  describe '# Deposit' do
    it 'adds to account' do
      bank = Bank.new('myBank')
      mikeaccount = bank.open_account('mike', 500)
      bank.deposit('mike', 250)
      mikeaccount[:balance].should == 750
    end
  end
end
