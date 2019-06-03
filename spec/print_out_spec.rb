require 'print_out'

describe PrintOut do
  describe '#print_statement' do
    it 'can print a single transaction' do
      transactions = double(:transactions)
      allow(transactions).to receive(:all).and_return([['10-01-2012', '1000.00', ' ', '1000.00']])
      expect { PrintOut.statement_of(transactions) }.to output("date || credit || debit || balance\n10-01-2012 || 1000.00 ||   || 1000.00\n").to_stdout
      expect(PrintOut.statement_of(transactions)).to eq("bank statement printed")
    end
    it 'can print multiple transactions' do
      transactions = double(:transactions)
      allow(transactions).to receive(:all).and_return([['10-01-2012', '1000.00', ' ', '1000.00'], ['13-01-2012', '2000.00', ' ', '3000.00'], ['14-01-2012', ' ', '500.00', '2500.00']])
      expect { PrintOut.statement_of(transactions) }.to output("date || credit || debit || balance\n10-01-2012 || 1000.00 ||   || 1000.00\n13-01-2012 || 2000.00 ||   || 3000.00\n14-01-2012 ||   || 500.00 || 2500.00\n").to_stdout
      expect(PrintOut.statement_of(transactions)).to eq("bank statement printed")
    end
  end
end
