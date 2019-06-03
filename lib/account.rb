class Account
  attr_accessor :balance

  def initialize
    @balance = 0.00
  end

  def deposit(amount, _date = Time.new.strftime("%d/%m/%Y"))
    @balance += amount
  end

  def withdraw(amount, _date = Time.new.strftime("%d/%m/%Y"))
    @balance -= amount
  end

end
