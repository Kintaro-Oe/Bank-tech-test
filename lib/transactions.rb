class Transactions
  attr_accessor :all

  def initialize
    @all = []
  end

  def deposit(amount, date, balance)
    amount_string = sprintf("%.2f", amount)
    balance_string = sprintf("%.2f", balance)
    this_transaction = [date, amount_string, ' ', balance_string]
    @all << this_transaction
  end

  def withdraw(amount, date, balance)
    amount_string = sprintf("%.2f", amount)
    balance_string = sprintf("%.2f", balance)
    this_transaction = [date, ' ', amount_string, balance_string]
    @all << this_transaction
  end
end
