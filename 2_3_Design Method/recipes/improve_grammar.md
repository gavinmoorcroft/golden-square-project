# 'Improve Grammar' Method Design Recipe

## 1. Describe the Problem

> As a user
> So that I can improve my grammar
> I want to verify that a text starts with a capital letter and ends with a
> suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

```ruby
# `improve_grammar` works out how long it will take to read a piece of text
correct = improve_grammar(string)

- receives a string as an argument
- correct is a boolean

```

## 3. Create Examples as Tests

```ruby
# EXAMPLE

improve_grammar("") #done
# should return a string to say it's empty: 
# "that text block is empty!"

improve_grammar('This is a string.') => 1.0 #done
#=> true

improve_grammar('This is a string?') => 1.0 #done
#=> true

improve_grammar('This is a string!') => 1.0 #done
#=> true

improve_grammar('this is a string.') => 1.0 #done
#=> false

improve_grammar('this is a string') => 1.0 #done
#=> false

improve_grammar('This is a string') => 1.0 #done
#=> false

improve_grammar('This is a string:') => 1.0
#=> false
```

## 4. Implement the Behaviour

navigate back one folder and run ```rspec```

