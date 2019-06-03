require 'account'

describe 'user can make a withdrawal' do
  it 'user can make a depost' do
    account = Account.new
    account.deposit(1000.00, '10-01-2012')
    account.withdraw(500.00, '13-01-2012')
    expect(account.balance).to eq(500.00)
    expect(account.transactions.all).to eq [['10-01-2012', 1000.00, ' ', 1000.00], ['13-01-2012', ' ', 500.00, 500.00]]
  end
end
