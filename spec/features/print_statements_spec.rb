require 'account'

describe 'user can print out statements' do
  it 'can print a single transaction' do
    account = Account.new
    account.deposit(1000.00, '10/01/2012')
    expect { Display.statement_of(account.transactions) }.to output(
      "date || credit || debit || balance\n" +
      "10/01/2012 || 1000.00 ||   || 1000.00\n"
    ).to_stdout
    expect(Display.statement_of(account.transactions)).to eq("bank statement printed")
  end
  it 'can print multiple transaction' do
    account = Account.new
    account.deposit(1000.00, '10/01/2012')
    account.deposit(2000.00, '13/01/2012')
    account.withdraw(500.00, '14/01/2012')
    expect { Display.statement_of(account.transactions) }.to output(
      "date || credit || debit || balance\n" +
      "10/01/2012 || 1000.00 ||   || 1000.00\n" +
      "13/01/2012 || 2000.00 ||   || 3000.00\n" +
      "14/01/2012 ||   || 500.00 || 2500.00\n"
    ).to_stdout
    expect(Display.statement_of(account.transactions)).to eq("bank statement printed")
  end
end
