require 'account'

describe 'user can make a deposit' do
  it 'user can make a depost' do
    account = Account.new
    account.deposit(1000.00, '10-01-2012')
    expect(account.balance).to eq(1000.00)
  end
end
