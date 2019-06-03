require_relative 'transactions'
require_relative 'print_out'

class Account
  attr_accessor :balance, :transactions

  def initialize(transactions = Transactions.new)
    @balance = 0.00
    @transactions = transactions
  end

  def deposit(amount, date = Time.new.strftime("%d/%m/%Y"))
    @balance += amount
    transactions.deposit(amount, date, balance)
  end

  def withdraw(amount, date = Time.new.strftime("%d/%m/%Y"))
    @balance -= amount
    transactions.withdraw(amount, date, balance)
  end
end
