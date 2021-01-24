class Paperboy

    def initialize(name)
        @name= name
        @experience= 0
        @earnings= 0
    end

    def quota
          @experience / 2   + 50 
    end

    def deliver(start_address, end_address)
    total_houses = end_address - start_address
    if total_houses ==  @quota
        daily_total = 0.25 * total_houses
        @earnings += daily_earnings
    elsif total_houses > @quota
        daily_quota = 0.25 * @quota
        bonus = 0.50 * (total_houses - @quota)
        daily_total = daily_quota + bonus
        @earnings += daily_total
    else
        daily_total = @earnings - 2
        @earnings -= 2
    end
    @experience += total_houses
    return daily_total

    end

    def report
    "I'm #{@name}, I've delivered #{@experience} papers and I've earned #{@earnings} so far!"
    end

end

pb1= Paperboy.new("John")
pb2= Paperboy.new("Alex")
p pb1
p pb2
p pb1.quota
p pb2.quota
# p pb1.deliver(1, 75)
# p pb2.deliver(5, 100)
p pb1.report
p pb2.report