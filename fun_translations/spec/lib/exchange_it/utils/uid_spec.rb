RSpec.describe ExchangeIt::Utils::Uid do
  let(:dummy) { Class.new { include ExchangeIt::Utils::Uid }.new }

  describe "#hash" do
    it "returns nill when no args to given" do
      expect(dummy.hash).to be_nil
    end

    it "returns string when at least 1 arg was given" do
      expect(dummy.hash("str1", "str2")).to be_an_instance_of(String)
    end
  end
end
