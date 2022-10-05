class ImproveGrammar

    def improve_grammar (string)
        fail "That's not a sentence, it's empty!" if string == ""
        is_cap_letter = string[0] == string[0].upcase
        is_punctuation = [".", "?", "!" ].include? string[-1] 
        
        if is_cap_letter && is_punctuation
            return true
        else
            return false
        end
    end

end