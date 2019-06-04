require 'transactions'

describe Transactions do
  describe '#deposit' do
    it 'builds and stores the current transactions' do
      transaction = described_class.new
      balance = 1000.00
      transaction.deposit(1000.00, '10/01/2012', balance)
      expect(transaction.record).to eq(
        [['10/01/2012', '1000.00', ' ', '1000.00']]
      )
    end
  end

  describe '#withdraw' do
    it 'builds and stores the current transactions' do
      transaction = described_class.new
      balance = 500.00
      transaction.withdraw(1000.00, '14/01/2012', balance)
      expect(transaction.record).to eq(
        [['14/01/2012', ' ', '1000.00', '500.00']]
      )
    end
  end
end
