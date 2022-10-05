require 'check_codeword'
RSpec.describe "Checking the codework" do
    it "check codword Horse" do
        result = check_codeword('horse')
        expect(result).to eq "Correct! Come in."
    end

    it "Check codework not Horse but begind with H and ends with E" do
        result = check_codeword('hose')
        expect(result).to eq "Close, but nope."
    end

    it "isn't an expected word" do
        result = check_codeword('dog')
        expect(result).to eq "WRONG!"
    end
end