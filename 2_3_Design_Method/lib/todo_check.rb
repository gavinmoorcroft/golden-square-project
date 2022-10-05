class ToDoCheck
    def todo_check(string)
        @string = string
        @expected_text = "#TODO"

        fail "that string object is empty" if @string == ""

        if (string).include? @expected_text
            true
        else
            false
        end
    end 
end
