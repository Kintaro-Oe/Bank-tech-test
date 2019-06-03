require 'account'

describe Account do
  describe '#balance' do
    it 'returns the account balance' do
      expect(subject.balance).to eq(0.00)
    end
  end

  describe '#deposit' do
    it 'updates account balance' do
      account = Account.new
      account.deposit(1000.00)
      expect(account.balance).to eq(1000.00)
    end
  end
end
