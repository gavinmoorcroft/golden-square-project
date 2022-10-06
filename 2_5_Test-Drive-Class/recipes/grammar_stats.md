# 'Grammar Stats' Method Design Recipe

## 1. Describe the Problem

> As a user
> 
> So that I can improve my grammar
> 
> I want to verify that a text starts with a capital letter and ends with a
> suitable sentence-ending punctuation mark.

> As a user
> 
> whilst trying to improve my grammar
> 
> I want to see the percentage of tries I get right

## 2. Design the Method Signature

```ruby
# 'initialize' 

gs = grammar_stats.new

# create an int and sets to 0 to track number of strings checked

# create an int and sets to 0 to track number of correct strings 

    def initialize
        @total_checks = 0
        @correct_checks = 0
    end

```

```ruby
# `check` works out how long it will take to read a piece of text
boolean = check(string)

- receives a string as an argument
updates both int values in percen
- returns a boolean 
```

```ruby
# `percentage_good` works out the percentage of correct strings checled
int = percentage_good()

- takes no arguments
- uses boths ints created by initiaize to calculate percentage
- returns an int as the percentage correct
```

## 3. Create Examples as Tests

```ruby
## Tests for the check() method

check("") #done
# should return a string to say it's empty: 
# "that text block is empty!"

check('This is a string.') => 1.0 
#=> true

check('This is a string?') => 1.0 
#=> true

check('This is a string!') => 1.0 
#=> true

check('this is a string.') => 1.0 
#=> false

check('this is a string') => 1.0 
#=> false

check('This is a string') => 1.0 
#=> false

check('This is a string:') => 1.0
#=> false
```

```ruby
## Tests for the percentage_good() method

percentage_good() # no checks have been carried out
#=> string "No checks have been carried out yet.


percentage_good() # three checks made, one correct two incorrect. should return 33
#=> int

```


## 4. Implement the Behaviour

navigate back one folder and run ```rspec```

