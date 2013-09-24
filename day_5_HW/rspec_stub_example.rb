describe "a stub with no return value specified" do
  let(:collaborator) { double("collaborator") }

  it "returns nil" do
    collaborator.stub(:message)
    collaborator.message.should be(nil)
  end
end