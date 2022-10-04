require 'read_time'

RSpec.describe ReadTime do
    
    context "when I have a empty string" do
        it 'returns "that text block is empty!"' do
        rt = ReadTime.new
        expect(rt.read_time("")).to eq "that text block is empty!"

        end
    end

    context "when I have a string of 50 words" do
        it 'will tell me it will take me 15 seconds to read' do

            test_string = "Seas second green kind herb given life void life moved Make divide whose also dominion open male was she'd seed given meat seed seasons void given brought every wherein isn't hath dominion every. Fish them together of cattle itself seed which beast over fruit. Midst after Is don't they're spirit."
            rt = ReadTime.new
            expect(rt.read_time(test_string)).to eq 0.25
        end
    end

end