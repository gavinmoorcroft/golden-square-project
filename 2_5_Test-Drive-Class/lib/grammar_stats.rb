class GrammarStats
    def initialize
        @total_checks = 0
        @correct_checks = 0
    end
  
    def check(text) # text is a string
        fail "That's not a sentence, it's empty!" if text == ""
        is_cap_letter = text[0] == text[0].upcase
        is_punctuation = [".", "?", "!" ].include? text[-1] 
        
        if is_cap_letter && is_punctuation
            @total_checks += 1
            @correct_checks += 1
            return true

        else
            @total_checks += 1   
            return false
        end
    end
  
    def percentage_good
        if @total_checks == 0
            fail "No checks have been carried out yet"
        else 
            percentage = (@correct_checks/@total_checks.to_f)*100
            percentage.to_i

        end

    end
  end

