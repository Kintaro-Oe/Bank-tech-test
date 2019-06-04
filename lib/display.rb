class Display
  def self.statement_of(account_transactions)
    puts 'date || credit || debit || balance'
    account_transactions.record.map do |transaction|
      puts transaction.join(" || ")
    end

    return 'bank statement printed'
  end
end
