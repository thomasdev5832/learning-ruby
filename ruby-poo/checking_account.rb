require_relative 'account'

class Checking_account < Account
    attr_accessor :limit

    def initialize(number, owner, balance, limit)
        super(number, owner, limit)
        @limit = limit
    end

    def withdraw(amount)
        if (balance + limit) >= amount
            self.balance -= amount
        else
            puts "Withdrawal not allowed!"
            puts "Insufficient funds"
        end
    end

end