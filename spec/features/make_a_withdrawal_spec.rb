require 'account'

describe 'when a user makes a withdrawal' do
  let(:account) { Account.new }
  before(:each) do
    account.deposit(1000.00, '10/01/2012')
    account.withdraw(500.00, '13/01/2012')
  end

  it 'account balance is updated' do
    expect(account.balance).to eq(500.00)
  end

  it 'transactions are recorded' do
    expect(account.transactions.record).to eq(
      [['10/01/2012', '1000.00', ' ', '1000.00'],
      ['13/01/2012', ' ', '500.00', '500.00']]
    )
  end
end
