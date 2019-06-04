require 'display'

describe Display do
  describe '#print_statement' do
    let(:account_transactions) { double(:account_transactions) }

    it 'can print a single transaction' do
      allow(account_transactions).to receive(:record).and_return(
        [['10/01/2012', '1000.00', ' ', '1000.00']]
      )
      expect { Display.statement_of(account_transactions) }.to output(
        "date || credit || debit || balance\n" +
        "10/01/2012 || 1000.00 ||   || 1000.00\n"
      ).to_stdout
      expect(Display.statement_of(account_transactions)).to eq("bank statement printed")
    end
    it 'can print multiple transactions' do
      allow(account_transactions).to receive(:record).and_return(
        [['10/01/2012', '1000.00', ' ', '1000.00'],
        ['13/01/2012', '2000.00', ' ', '3000.00'],
        ['14/01/2012', ' ', '500.00', '2500.00']]
      )
      expect { Display.statement_of(account_transactions) }.to output(
        "date || credit || debit || balance\n" +
        "10/01/2012 || 1000.00 ||   || 1000.00\n" +
        "13/01/2012 || 2000.00 ||   || 3000.00\n" +
        "14/01/2012 ||   || 500.00 || 2500.00\n"
      ).to_stdout
      expect(Display.statement_of(account_transactions)).to eq("bank statement printed")
    end
  end
end
