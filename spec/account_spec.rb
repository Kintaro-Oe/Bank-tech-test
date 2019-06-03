require 'account'

describe Account do
  describe '#balance' do
    it 'returns the account balance' do
      expect(subject.balance).to eq(0.00)
    end
  end
end
