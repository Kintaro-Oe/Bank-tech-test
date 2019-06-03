class Transactions
  attr_accessor :all

  def initialize
    @all = []
  end

  def deposit(amount, date, balance)
    this_transaction = [date, amount, ' ', balance]
    @all << this_transaction
  end

  def withdraw(amount, date, balance)
    this_transaction = [date, ' ', amount, balance]
    @all << this_transaction
  end
end
