class PrintOut
  def self.statement_of(transactions)
    puts 'date || credit || debit || balance'
    transactions.all.map do |transaction|
      puts transaction.join(" || ")
    end

    return 'bank statement printed'
  end
end
