require_relative 'client'

class Account
    # getters
    attr_reader :number, :owner
    # setters & getters
    attr_accessor :balance
        
    def initialize(number, owner, balance)
        @number = number
        @owner = owner
        @balance = balance
    end

    def withdraw(amount)
        if balance >= amount
            self.balance -= amount
        else
            puts "Withdrawal not allowed!"
            puts "Insufficient funds"
        end
    end

    def deposit(amount)
        self.balance += amount
    end

    def transfer(target_account, amount)
        self.withdraw(amount)
        target_account.deposit(amount)
    end

end