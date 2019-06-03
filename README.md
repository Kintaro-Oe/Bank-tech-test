Bank Tech Test
=================


This is mini banking program written in Ruby, which you can interact with via a REPL, such as IRB. You are able to create an account, make deposits, withdrawals and print your statement.


### Technologies Used
__Development Environment__

* Languages: Ruby

__Test Environment__

* Testing: Rspec
* Analytics: Simplecov, RuboCop


### User stories - Features
```
As a User
So that I can save money
I would like to create a bank account

As a User
So that I can store my money
I would like to make deposits

As a User
So that I can access my money
I would like to make withdrawals

As a User
So that I know when each activity occurred
I would like transactions to have dates

As a User
So that I can see my balance and transaction details
I would like to print my statement


Specifications

* make deposits
* make withdrawals
* print account statement
  * see transaction date
  * see deposits debited on the account
  * see withdrawals credited on the account
  * see balance
```


### Example in irb

```bash
2.6.0 :001 > require './lib/account.rb'
 => true
2.6.0 :002 > myAccount = Account.new
 => #<Account:0x00007ffafe885a58 @balance=0.0, @transactions=#<Transactions:0x00007ffafe885a30 @all=[]>>
2.6.0 :003 > myAccount.deposit(1000.00, '10-01-2012')
 => [["10-01-2012", "1000.00", " ", "1000.00"]]
2.6.0 :004 > myAccount.deposit(2000.00, '13-01-2012')
 => [["10-01-2012", "1000.00", " ", "1000.00"], ["13-01-2012", "2000.00", " ", "3000.00"]]
2.6.0 :005 > myAccount.withdraw(500.00, '14-01-2012')
 => [["10-01-2012", "1000.00", " ", "1000.00"], ["13-01-2012", "2000.00", " ", "3000.00"], ["14-01-2012", " ", "500.00", "2500.00"]]
2.6.0 :006 > myAccount.print_statement
date || credit || debit || balance
10-01-2012 || 1000.00 ||   || 1000.00
13-01-2012 || 2000.00 ||   || 3000.00
14-01-2012 ||   || 500.00 || 2500.00
 => "bank statement printed"
```

### How to run the app
* Clone this repository
* Run `bundle install` in your command line to ensure all gems are installed
* Open irb by running irb in your command line
* Run `require './lib/account.rb'` to load the file before interacting


### How to run the tests
* Run `rspec` in your command line
