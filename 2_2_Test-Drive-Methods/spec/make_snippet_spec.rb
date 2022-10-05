require 'make_snippet'

RSpec.describe MakeSnippet do

    context "when passed an empty string" do
        it "make snippet will return an empty string" do
            snippet_maker = MakeSnippet.new 
            snippet = snippet_maker.snip('')
            expect(snippet).to eq ''
        end
    end


    context "when make_snippet is used" do
        it "will return the first 5 words" do
            snippet_maker = MakeSnippet.new 
            snippet = snippet_maker.snip('this is a string of words that is longer than five words')
            expect(snippet).to eq 'this is a string of...'
        end
    end

end

