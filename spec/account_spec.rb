require 'account'

describe Account do
  describe '#deposit' do
    let(:account) { described_class.new }

    it 'updates account balance' do
      account.deposit(1000.00)
      expect(account.deposit(2000.00)).to eq(3000.00)
    end
    it 'updates the account transactions' do
      account.deposit(1000.00, '10/01/2012')
      expect(account.transactions.record).to eq(
        [['10/01/2012', '1000.00', ' ', '1000.00']]
      )
    end
  end

  describe '#withdraw' do
    it 'updates account balance' do
      account = described_class.new
      account.deposit(1000.00)
      expect(account.withdraw(500.00)).to eq(500.00)
    end
    it 'updates the account transactions' do
      account = described_class.new
      account.deposit(1000.00, '10/01/2012')
      account.withdraw(500.00, '14/01/2012')
      expect(account.transactions.record).to eq(
        [['10/01/2012', '1000.00', ' ', '1000.00'],
        ['14/01/2012', ' ', '500.00', '500.00']]
      )
    end
  end
end
