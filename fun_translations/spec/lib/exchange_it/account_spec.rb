RSpec.describe ExchangeIt::Account do
  # let(:user) {ExchangeIt::User.new 'erer', 'ergtert'} variant 1
  let(:user_class) { Struct.new(:name, :surname) }
  let(:john) { described_class.new(user_class.new("John", "Doe")) }

  it "has zero balance" do
    expect(john.balance).to eq(0)
  end

  it "has prop uid" do
    expect(john.uid).to be_an_instance_of(String)
    hash = john.hash "John", "Doe"
    expect(john.uid).to eq(hash)
  end
end
