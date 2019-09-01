# frozen_string_literal: true

class BankAccount
  attr_reader :name
  attr_accessor :balance, :status

  OPEN = 'open'
  CLOSED = 'closed'
  STARTING_BALANCE = 1000

  def initialize(name, balance = STARTING_BALANCE, status = OPEN)
    @name = name
    self.balance = balance
    self.status = status
  end

  def deposit(amount)
    self.balance += amount
  end

<<<<<<< HEAD
  def display_balance
    "Your balance is $#{balance}."
  end

  def valid?
    balance.positive? && status == OPEN
  end
=======
    def display_balance
        "Your balance is $#{self.balance}."
    end 

    def valid?
        self.balance > 0 && self.status == OPEN
    end 
>>>>>>> a275d8d356a670b22d04a7c298bb38b8672c35ef

  def close_account
    self.status = CLOSED
  end
end
