require 'gratitudes'
    
RSpec.describe Gratitudes do
    it "checks that empty array has been created" do
        gratitude = Gratitudes.new
        initial_string = gratitude.format
        expect(initial_string).to eq "Be grateful for: "
    end

    it "adds a gratitude" do
        gratitude = Gratitudes.new
        gratitude.add("potatos")
        result = gratitude.format
        expect(result).to eq "Be grateful for: potatos"
    end

end
