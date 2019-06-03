class Account
  attr_accessor :balance, :transactions

  def initialize
    @balance = 0.00
    @transactions = []
  end

  def deposit(amount, date = Time.new.strftime("%d/%m/%Y"))
    @balance += amount
    update_transactions(amount, date)
  end

  def withdraw(amount, date = Time.new.strftime("%d/%m/%Y"))
    @balance -= amount
    update_transactions(amount, date)
  end

  def update_transactions(amount, date)
    this_transaction = [date, amount, ' ']
    this_transaction << @balance
    @transactions << this_transaction
  end
end
