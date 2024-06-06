RSpec.describe ExchangeIt::Account do
  # let(:user) {ExchangeIt::User.new 'erer', 'ergtert'} variant 1
  let(:user_class) { Struct.new(:name, :surname) }
  let(:john) { described_class.new(user_class.new("John", "Doe")) }

  it "has zero balance" do
    expect(john.balance).to eq(0)
  end
end
