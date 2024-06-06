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




  #  test
  describe "#determine_and_return_email" do
    let(:consultant) { {email: "consultant-email@test.com"} }
    let(:mandate_with_email) { double("Mandate", info: {"spk_vertriebsweg" => VertriebswegHelper::MITARBEITER, "spk_email" => "spk-email@test.com"}) }
    let(:mandate_without_email) { double("Mandate", info: {"spk_vertriebsweg" => VertriebswegHelper::MITARBEITER, "spk_email" => nil}) }
    let(:mandate_kunde_angemeldet) { double("Mandate", info: {"spk_vertriebsweg" => VertriebswegHelper::KUNDE_ANGEMELDET, "spk_email" => "spk-email@test.com"}) }

    context "when spk_email is present and VertriebswegHelper::MITARBEITER" do
      it "returns spk_email" do
        strategy = described_class.new({})
        allow(strategy).to receive(:mandate).and_return(mandate_with_email)

        result = strategy.determine_and_return_email(consultant, mandate_with_email)
        expect(result).to eq("spk-email@test.com")
      end
    end

    context "when spk_email is not present and VertriebswegHelper::MITARBEITER" do
      it "returns consultant_email" do
        strategy = described_class.new({})
        allow(strategy).to receive(:mandate).and_return(mandate_without_email)

        result = strategy.determine_and_return_email(consultant, mandate_without_email)
        expect(result).to eq("consultant-email@test.com")
      end
    end

