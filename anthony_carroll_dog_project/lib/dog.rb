class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    # getter methods:
    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end
    
    # setter
    def age=(number)
        @age = number
    end

    def bark
        if @age > 3
            return @bark.upcase
        else
            return @bark.downcase
        end
    end

    def favorite_foods
        return @favorite_foods
    end

    def favorite_food?(food)
        @favorite_foods.each do |ele|
            if ele.downcase == food.downcase
                return true
            end
        end
        false
    end

end
