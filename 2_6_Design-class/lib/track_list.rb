class TrackList
  def initialize()
    @track_list = []
  end

  def add_track(track)
    fail "There was no track given, nothing added to the Track List" if track == ""  
    fail "That track is already in your list." if @track_list.include?(track)
    @track_list << track
  end

  def list()
    @track_list
  end
end