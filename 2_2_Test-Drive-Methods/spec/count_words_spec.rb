require 'count_words'

# A method called count_words that takes a string as an argument
# and returns the number of words in that string.

RSpec.describe CountWords do

    context "when passed an empty string" do
        it "returns 'there are no words in that string'" do
            wl = CountWords.new
            expect(wl.count_words("")).to eq 'there are no words in that string'
        end
    end

    context "when passed an string of 5 words" do
        it "returns an int of 5" do
            wl = CountWords.new
            expect(wl.count_words("This is five words long")).to eq 5
        end  
    end


end


