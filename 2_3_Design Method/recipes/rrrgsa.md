# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# `read_time` works out how long it will take to read a piece of text
read_time = read_time(mixed_words)

@text: a string (e.g. "A long block of words, over 200")
time: a float (e.g. 12.5)

# The method doesn't print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

read_time("") => "that text block is empty!"
#=> "that text block is empty!"
read_time('text 200 words long') => 1.0
#=> 1.0


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

