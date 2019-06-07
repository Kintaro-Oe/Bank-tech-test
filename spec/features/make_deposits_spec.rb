require 'account'

describe 'when a user makes deposits' do
  let(:account) { Account.new }
  before(:each) do
    account.deposit(1000.00, '10/01/2012')
  end

  it 'account balance is updated' do
    expect(account.deposit(2000.00, '13/01/2012')).to eq(3000.00)
  end

  it 'transactions are recorded' do
    account.deposit(2000.00, '13/01/2012')
    expect(account.transactions.record).to eq(
      [['10/01/2012', '1000.00', ' ', '1000.00'],
      ['13/01/2012', '2000.00', ' ', '3000.00']]
    )
  end
end
