class Transactions
  attr_accessor :record

  def initialize
    @record = []
  end

  def deposit(amount, date, balance)
    this_transaction = [date, two_decimal(amount), ' ', two_decimal(balance)]
    @record << this_transaction
  end

  def withdraw(amount, date, balance)
    this_transaction = [date, ' ', two_decimal(amount), two_decimal(balance)]
    @record << this_transaction
  end

  def two_decimal(input)
    sprintf("%.2f", input)
  end
end
