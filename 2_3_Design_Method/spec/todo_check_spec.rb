require 'todo_check'

RSpec.describe "to check strings for #TODO" do
    
    context "when passed an empty string object" do
        it "will return an error" do
            todo = ToDoCheck.new
            expect {todo.todo_check("")}.to raise_error "that string object is empty"
        end
    end

    context "when passed an string object without the require #TODO" do
        it "will return a false" do
            todo = ToDoCheck.new
            result = todo.todo_check("This string object doens't have the required text")
            expect(result).to eq false
        end
    end

    context "when passed an string object with the require #TODO at the start" do
        it "will return a true" do
            todo = ToDoCheck.new
            result = todo.todo_check("#TODO This string object MUST be done")
            expect(result).to eq true
        end
    end

    context "when passed an string object with the require #TODO at any point in the string" do
        it "will return a true" do
            todo = ToDoCheck.new
            result = todo.todo_check("this #TODO string must be done")
            expect(result).to eq true
        end
    end


end