require_relative 'transactions'

class Account
  attr_accessor :balance, :transactions

  def initialize(transactions = Transactions.new)
    @balance = 0.00
    @transactions = transactions
  end

  def deposit(amount, date = Time.new.strftime("%d/%m/%Y"))
    @balance += amount

    amount = sprintf("%.2f", amount)
    balance = sprintf("%.2f", @balance)

    transactions.deposit(amount, date, balance)
  end

  def withdraw(amount, date = Time.new.strftime("%d/%m/%Y"))
    @balance -= amount

    amount = sprintf("%.2f", amount)
    balance = sprintf("%.2f", @balance)

    transactions.withdraw(amount, date, balance)
  end

  def print_statement
    puts 'date || credit || debit || balance'
    transactions.all.map do |transaction|
      puts transaction.join(" || ")
    end

    return 'bank statement printed'
  end
end
