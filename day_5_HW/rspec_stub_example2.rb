describe "a stub with a return value" do
  context "specified in a block" do
    it "returns the specified value" do
      collaborator = double("collaborator")
      collaborator.stub(:message) { :value }
      collaborator.message.should eq(:value)
    end
  end
end

describe "a stub with a return value" do
  context "specified in a block" do
    it "returns the specified value for yahooFinance without using yahooFinance" do
      yahooFinance = mock("YahooFinance::get_quotes(YahooFinance::StandardQuote, stock_name)[stock_name]")
      yahooFinance.stub(:stock) { :value }
      yahooFinance.stock.should eq(:value)
    end
  end

  context "specified with #and_return" do
    it "returns the specified value" do
      collaborator = double("collaborator")
      collaborator.stub(:message).and_return(:value)
      collaborator.message.should eq(:value)
    end
  end

  context "specified with a hash passed to #stub" do
    it "returns the specified value" do
      collaborator = double("collaborator")
      collaborator.stub(:message_1 => :value_1, :message_2 => :value_2)
      collaborator.message_1.should eq(:value_1)
      collaborator.message_2.should eq(:value_2)
    end
  end

  context "specified with a hash passed to #double" do
    it "returns the specified value" do
      collaborator = double("collaborator",
                            :message_1 => :value_1,
                            :message_2 => :value_2
                            )
      collaborator.message_1.should eq(:value_1)
      collaborator.message_2.should eq(:value_2)
    end
  end
end
