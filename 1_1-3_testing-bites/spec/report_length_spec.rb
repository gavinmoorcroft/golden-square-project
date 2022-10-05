require 'report_length'

RSpec.describe "testing string length" do
    it "returns length" do
        result = report_length("hello")
        expect(result).to eq "This string was 5 characters long."
    end
end