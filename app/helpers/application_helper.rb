module ApplicationHelper
    
    def get_season()
        time = Time.new
        
        if(time.month >= 3) && (time.month <= 5)
            "Jest wiosna"
        elsif(time.month > 5) && (time.month <= 8)
            "Jest lato"
        elsif(time.month > 8) && (time.month <= 10)
            "Jest jesień"
        else
            "Zima"
        end
    end
    
    def get_random_number(max_value = 10)
        rand(max_value)
    end
    
    def get_random_welcome()
        opening = ["Jaki piękny dzień. ",
                    "Cześć. ",
                    "Dzięki, że jesteś. "]
        middle = ["Mamy nadzieje, że znajdziesz czego szukasz. ",
                    "Mnóstwo do wyboru. ",
                    "Sprawdź naszę przeceny "]
        ending = ["Jeśli potrzebujesz pomocy. ",
                    "Dziękujemy za odwiedziny. ",
                    "Zadzwoń do nas. "]
        "#{opening[rand(3)]} #{middle[rand(3)]} #{ending[rand(3)]}"
    end
    
    def count_to_10
        x = 2
        number_list = "1"
        
        loop do
        number_list = number_list + ", " + x.to_s
        x += 1
        break if x > 10
        end
    
        "#{number_list}"
    end
    
    
end
