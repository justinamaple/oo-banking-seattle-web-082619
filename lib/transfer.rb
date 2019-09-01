# frozen_string_literal: true

class Transfer
  attr_reader :sender, :receiver, :amount
  attr_accessor :status

  PENDING = 'pending'
  COMPLETE = 'complete'
  REJECTED = 'rejected'
  REVERSED = 'reversed'

  def initialize(sender, receiver, amount, status = PENDING)
    @sender = sender
    @receiver = receiver
    @amount = amount
    self.status = status
  end

  def valid?
    sender.valid? && receiver.valid?
<<<<<<< HEAD
  end

  def execute_transaction
    if valid? && sender.balance > amount && status == PENDING
=======
  end 

  def execute_transaction 
    if valid? && sender.balance > amount  && self.status == PENDING
>>>>>>> a275d8d356a670b22d04a7c298bb38b8672c35ef
      sender.balance -= amount
      receiver.balance += amount
      self.status = COMPLETE
    else
      self.status = REJECTED
      'Transaction rejected. Please check your account balance.'
    end
  end

  def reverse_transfer
<<<<<<< HEAD
    return unless status == COMPLETE

    sender.balance += amount
    receiver.balance -= amount
    self.status = REVERSED
  end
=======
    if self.status == COMPLETE
      sender.balance += amount
      receiver.balance -= amount
      self.status = REVERSED
    end   
  end 
>>>>>>> a275d8d356a670b22d04a7c298bb38b8672c35ef
end
