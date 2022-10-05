class CountWords 
# A method called count_words that takes a string as an argument
# and returns the number of words in that string.

    def count_words(string)
        @string = string
        @size = @string.split.size
        

        if @size == 0
            return "there are no words in that string"
        else
            return @size 
        end
    end
end