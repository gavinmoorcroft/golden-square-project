require 'grammar_stats'

RSpec.describe "Grammar Stats" do

    context "when instantiatiing the class" do
        it "two ints will be created" do
            gs = GrammarStats.new
            total_checked = gs.instance_variable_get(:@total_checks)
            correct_checks = gs.instance_variable_get(:@correct_checks)
            expect(total_checked).to eq 0
            expect(correct_checks).to eq 0
        end
    end

    context "when passed an empty string" do
        it "fails and returns a message" do
            gs = GrammarStats.new
            expect {gs.check("")}.to raise_error "That's not a sentence, it's empty!"
        end
    end

    context "when passed a sentence with a capital letter at the start and a full stop on the end" do
        it "will return true" do
            gs = GrammarStats.new
            result = gs.check("This is a string.")
            expect(result).to eq true
        end
    end

    context "when passed a sentence with a capital letter at the start and a question mark on the end" do
        it "will return true" do
            gs = GrammarStats.new
            result = gs.check("This is a string?")
            expect(result).to eq true
        end
    end

    context "when passed a sentence with a capital letter at the start but a exclamation mark on the end" do
        it "will return true" do
            gs = GrammarStats.new
            result = gs.check("This is a string?")
            expect(result).to eq true
        end
    end

    context "when passed a sentence with no capital letter at the start but a full stop on the end" do
        it "will return false" do
            gs = GrammarStats.new
            result = gs.check("this is a string.")
            expect(result).to eq false
        end
    end

    context "when passed a sentence with a capital letter at the start but no full stop on the end" do
        it "will return false" do
            gs = GrammarStats.new
            result = gs.check("This is a string")
            expect(result).to eq false
        end
    end

    context "when passed a sentence with no capital letter at the start and no punctuation on the end" do
        it "will return false" do
            gs = GrammarStats.new
            result = gs.check("this is a string")
            expect(result).to eq false
        end
    end

    context "when passed a sentence with a capital letter at the start and incorrect punctuation on the end" do
        it "will return false" do
            gs = GrammarStats.new
            result = gs.check("This is a string:")
            expect(result).to eq false
        end
    end

    context "when looking at stats but no checks have been made" do
        it "will return an error" do
            gs = GrammarStats.new
            expect {gs.percentage_good()}.to raise_error "No checks have been carried out yet"
        end
    end

    context "when looking at stats after one successesful and two failed attempts" do
        it "it will return the correct int" do
            gs = GrammarStats.new
            gs.check("This is a string.")
            gs.check("This is a string:")
            gs.check("this is a string.")
            result = gs.percentage_good()
            expect(result).to eq 33
        end
    end
end
