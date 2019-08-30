class Transfer
  attr_reader :sender, :receiver, :amount
  attr_accessor :status
  
  PENDING = "pending"
  COMPLETE = "complete"
  REJECTED = "rejected"
  REVERSED = "reversed"

  def initialize(sender, receiver, amount, status = PENDING)
    @sender = sender 
    @receiver= receiver
    @amount = amount 
    self.status = status 
  end 

  def valid?
      self.sender.valid? && self.receiver.valid?
  end 

  def execute_transaction 
    if self.valid? && self.sender.balance > self.amount  && self.status == PENDING
      self.sender.balance -= self.amount
      self.receiver.balance += self.amount 
      self.status = COMPLETE
    else
      self.status = REJECTED
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if self.status == COMPLETE
      self.sender.balance += self.amount
      self.receiver.balance -= self.amount
      self.status = REVERSED
    end   
  end 
end
