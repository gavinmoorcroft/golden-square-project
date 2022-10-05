require 'counter'

RSpec.describe Counter do
    it "check pobject created correctly" do
        counter = Counter.new
        initial_value = counter.report
        expect(initial_value).to eq "Counted to 0 so far."
    end

    it "check add method adds to counter correctly" do
        counter = Counter.new
        counter.add(5)
        result = counter.report
        expect(result).to eq "Counted to 5 so far."
    end
end