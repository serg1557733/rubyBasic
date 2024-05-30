# frozen_string_literal: true

RSpec.describe "ExchangeIt::User " do
  let(:user) { ExchangeIt::User.new "John", "Doe" }
  let(:user_no_name) { ExchangeIt::User.new nil, "Doe" }

  it "Return User name" do
    expect(user.name).to eq("John")
  end

  it "user name nil" do
    expect(user_no_name.name).to be_nil
  end

  it "Return User surname" do
    expect(user.surname).to eq("Doe")
  end

  specify "#account" do
    expect(user.account).to be_an_instance_of(ExchangeIt::Account)
  end

  it "has zero balance" do
    expect(user.balance).to eq(0)
  end
end
