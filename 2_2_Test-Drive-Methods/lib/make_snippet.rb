class MakeSnippet
    #method to take a string
        #split that string into an array of words
        #build a string usinf the words from the arrat
        #append '...' to the end of the string
        # return string.

    def snip (string)
        @string = string
        @words = @string.split(" ")
       
        if @words.length <= 5
            return @string
        else
            first_5_words = @words[0,5].join(" ")
            return first_5_words + "..."
        end
    end

end