require_relative 'transactions'
require_relative 'display'

class Account
  attr_accessor :balance, :transactions

  def initialize(transactions = Transactions.new, time = Time.new)
    @balance = 0.00
    @transactions = transactions
    @date_today = time.strftime("%d/%m/%Y")
  end

  def deposit(amount, date = @date_today)
    @balance += amount
    transactions.deposit(amount, date, balance)
  end

  def withdraw(amount, date = @date_today)
    @balance -= amount
    transactions.withdraw(amount, date, balance)
  end
end
