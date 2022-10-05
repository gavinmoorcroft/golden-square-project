# 'TODO check' Method Design Recipe

## 1. Describe the Problem

> As a user
> So that I can keep track of my tasks
> I want to check if a text includes the string #TODO.
> 
## 2. Design the Method Signature

```ruby
result = todo_check(string)

- method takes a string as an arg
- method will return an error if string is empty
- 'result' will be a boolean

```

## 3. Create Examples as Tests

```ruby
todo_check("")
# should return a error with the sting
# 'that string object is empty'

todo_check("this string doesn't have the to do part in")
# => false

todo_check("#TODO this is a string")
# => true

todo_check("this #TODO string must be done")

```

## 4. Implement the Behaviour

navigate back one folder and run ```rspec```

