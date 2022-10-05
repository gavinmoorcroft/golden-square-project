require 'improve_grammar'

RSpec.describe "Improve Grammar" do

    context "when passed an empty string" do
        it "fails and returns a message" do
            ig = ImproveGrammar.new
            expect {ig.improve_grammar("")}.to raise_error "That's not a sentence, it's empty!"
        end
    end

    context "when passed a sentence with a capital letter at the start and a full stop on the end" do
        it "will return true" do
            ig = ImproveGrammar.new
            result = ig.improve_grammar("This is a string.")
            expect(result).to eq true
        end
    end

    context "when passed a sentence with a capital letter at the start and a question mark on the end" do
        it "will return true" do
            ig = ImproveGrammar.new
            result = ig.improve_grammar("This is a string?")
            expect(result).to eq true
        end
    end

    context "when passed a sentence with a capital letter at the start but a exclamation mark on the end" do
        it "will return true" do
            ig = ImproveGrammar.new
            result = ig.improve_grammar("This is a string?")
            expect(result).to eq true
        end
    end

    context "when passed a sentence with no capital letter at the start but a full stop on the end" do
        it "will return false" do
            ig = ImproveGrammar.new
            result = ig.improve_grammar("this is a string.")
            expect(result).to eq false
        end
    end

    context "when passed a sentence with a capital letter at the start but no full stop on the end" do
        it "will return false" do
            ig = ImproveGrammar.new
            result = ig.improve_grammar("This is a string")
            expect(result).to eq false
        end
    end

    context "when passed a sentence with no capital letter at the start and no punctuation on the end" do
        it "will return false" do
            ig = ImproveGrammar.new
            result = ig.improve_grammar("this is a string")
            expect(result).to eq false
        end
    end

    context "when passed a sentence with a capital letter at the start and incorrect punctuation on the end" do
        it "will return false" do
            ig = ImproveGrammar.new
            result = ig.improve_grammar("This is a string:")
            expect(result).to eq false
        end
    end
end
