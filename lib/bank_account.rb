class BankAccount
    attr_reader :name 
    attr_accessor :balance, :status
    
    OPEN = "open"
    CLOSED = "closed"
    STARTING_BALANCE = 1000

    def initialize(name, balance = STARTING_BALANCE, status = OPEN)
        @name = name 
        self.balance = balance
        self.status = status   
    end 

    def deposit(amount)
        self.balance += amount  
    end 

    def display_balance
        "Your balance is $#{self.balance}."
    end 

    def valid?
        self.balance > 0 && self.status == OPEN
    end 

    def close_account 
        self.status = CLOSED
    end 
end
