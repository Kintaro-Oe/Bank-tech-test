require_relative 'transactions'
require_relative 'display'

class Account
  attr_reader :transactions
  attr_accessor :balance
  private :balance

  def initialize(transactions = Transactions.new, time = Time.new)
    @balance = 0.00
    @transactions = transactions
    @date_today = time.strftime("%d/%m/%Y")
  end

  def deposit(amount, date = @date_today)
    self.balance= balance + amount
    transactions.deposit(amount, date, balance)
    balance
  end

  def withdraw(amount, date = @date_today)
    self.balance= balance - amount
    transactions.withdraw(amount, date, balance)
    balance
  end
end
