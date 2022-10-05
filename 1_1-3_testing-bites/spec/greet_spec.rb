require 'greet'
RSpec.describe "Greet method" do
    it "replies Hello and included the name" do
    result = greet('Natasha')
    expect(result).to eq "Hello, Natasha!"
    end
end