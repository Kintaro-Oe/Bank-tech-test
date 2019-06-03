class Account
  # attr_reader :balance
  attr_accessor :transactions, :balance

  def initialize
    @balance = 0.00
    @transactions = []
  end

  def deposit(amount, _date = Time.new.strftime("%d/%m/%Y"))
    @balance += amount
  end
end
