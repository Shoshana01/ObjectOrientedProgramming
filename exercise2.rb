class Cat

    def initialize(name, preffered_food, meal_time)
    @name= name
    @preffered_food= preffered_food
    @meal_time= meal_time
    end

    # #4 ?? is it right?
    def eats_at
     "#{@meal_time} pm" 
    end
        # //is this right?
    def meow 
      return "My name is #{@name} and I eat #{@preferred_food} at #{@meal_time} pm."
    end  

    end

    cat1=Cat.new("pussy", "milk", 2)
    cat2=Cat.new("sally", "meat", 7)
    
    p cat1.eats_at
    p cat2.eats_at
    p cat1.meow
    p cat2.meow
     
    
    
