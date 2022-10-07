require 'track_list'

RSpec.describe "Track List" do
    context "when instantiating the class" do
        it "will create an empty list" do
            tl = TrackList.new
            list = tl.instance_variable_get(:@track_list)
            expect(list).to eq []
        end
    end

    context "when add_track is called with an empty string" do
        it "will error and provide a user friendly message" do
            tl = TrackList.new
            expect {tl.add_track("")}.to raise_error "There was no track given, nothing added to the Track List"
        end
    end

    context "when add_track is called with a track" do
        it "add the track to the list" do
            tl = TrackList.new
            tl.add_track("This is a track")
            result = tl.instance_variable_get(:@track_list)
            expect(result).to eq ["This is a track"]
        end
    end

    context "when add_track is called with track that is already in the list" do
        it "will not add the track and return an user friendly error" do
            tl = TrackList.new
            tl.add_track("This is a track")
            expect {tl.add_track("This is a track")}.to raise_error "That track is already in your list."
        end
    end

    context "when list is called" do
        it "will return the list" do
            tl = TrackList.new
            tl.add_track("This is a track")
            tl.add_track("This is also a track")
            tl.add_track("This track is different to the other two")
            result = tl.list
            expect(result).to eq ["This is a track", "This is also a track", "This track is different to the other two"]
        end
    end


       
end