# Keep Track of Listened Music Class Design Recipe

## 1. Describe the Problem

> As a user
> 
> So that I can keep track of my music listening
> 
> I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class TrackList
  def initialize()
    @track_list = []
  end

  def add_track(track)
  # takes a string as an arg
  # throw user friendly message if no track passed as arg
  # check track isn't in list, throw a error if it is
  # if not, add string to list 
  end

  def list()
  # takes no args
  # returns list of tracks
  end
end

```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1 Check class instantiation happens with an empty list
tl = TrackList.new
tl.instance_variable_get(:@track_list) # => []

# 2 add_track called with a no track
tl = TrackList.new
tl.add_track("") #=> error returned "There was no track given, nothing added to the Track List"

# 3 add_track called with a new track
tl = TrackList.new
tl.add_track("This is a track")
tl.instance_variable_get(:@track_list) # => ["This is a track]

# 4 add existing track to list
tl = TrackList.new
tl.add_track("This is a track")
tl.add_track("This is a track") #=> error returned "That track is already in your list."

# 5 when list is called
tl = TrackList.new
tl.list #=> list

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

