class BankAccount

    def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
end


def deposit(amount)
@balance += amount
end


def withdraw(an_amount)
    @balance -= an_amount
end

def gain_interest
    @balance += @balance * @interest_rate
end

end
canadian=BankAccount.new(10000, 0.03)
p canadian
canadian.deposit(1000)
p canadian
canadian.withdraw(50)
p canadian
canadian.gain_interest
p canadian
