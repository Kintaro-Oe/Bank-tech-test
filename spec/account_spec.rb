require 'account'

describe Account do
  describe '#balance' do
    it 'returns the account balance' do
      expect(subject.balance).to eq(0.00)
    end
  end

  describe '#deposit' do
    let(:account) { Account.new }

    it 'updates account balance' do
      account.deposit(1000.00)
      account.deposit(2000.00)
      expect(account.balance).to eq(3000.00)
    end
    it 'updates the account transactions' do
      account.deposit(1000.00, '10-01-2012')
      expect(account.transactions.all).to eq [['10-01-2012', '1000.00', ' ', '1000.00']]
    end
  end

  describe '#withdraw' do
    it 'updates account balance' do
      account = Account.new
      account.deposit(1000.00)
      account.withdraw(500.00)
      expect(account.balance).to eq(500.00)
    end
    it 'updates the account transactions' do
      account = Account.new
      account.deposit(1000.00, '10-01-2012')
      account.withdraw(500.00, '14-01-2012')
      expect(account.transactions.all).to eq([['10-01-2012', '1000.00', ' ', '1000.00'], ['14-01-2012', ' ', '500.00', '500.00']])
    end
  end
end
