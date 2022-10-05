require 'string_builder'

RSpec.describe StringBuilder do
    it "initialize" do
        string_builder = StringBuilder.new
        initial_value = string_builder.output
        expect(initial_value).to eq ""
    end

    it "adds a string" do
        string_builder = StringBuilder.new
        result = string_builder.add("Please work!!")
        expect(result).to eq "Please work!!"
    end

    it "calculates length of string" do 
        string_builder = StringBuilder.new
        string_builder.add("elephant")
        length = string_builder.size
        expect(length).to eq 8
    end
end