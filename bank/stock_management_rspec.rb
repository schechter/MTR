require_relative 'stock_management'

describe Account do # calss bank
	it ' Makes an account with a name and portfolios' do
		account = Account.new('acct1')
		account.should be_instance_of Account
		account.name.should == 'acct1'
		account.portfolios.should be_instance_of(Hash)
	end

	
end
