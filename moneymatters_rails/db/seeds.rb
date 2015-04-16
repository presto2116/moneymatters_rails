# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Account.destroy_all
Transaction.destroy_all

Account.create(name: "Preston Checking", bank: "WF", account_number: 543832, balance: '54390.09')
Account.create(name: "Preston Savings", bank: "WF", account_number: 7482935, balance: '45060.54')
Account.create(name: "Echo Checking", bank: "Citi Bank", account_number: 9764354, balance: '55456.24')
Account.create(name: "Echo Savings", bank: "Citi Bank", account_number: 7352643, balance: '40930.49')
Account.create(name: "China Checking", bank: "Bank of China", account_number: 6473839, balance: '16043.43')
Account.create(name: "China Savings", bank: "Bank of China", account_number: 3285640, balance: '12053.13')


Transaction.create(account_id: 1, credit: nil, debit: '42.14', payee: "Amazon", date: "02/18/15", category: "personal care")
Transaction.create(account_id: 1, credit: '15000.00', debit: nil, payee: "Google.inc", date: "03/01/15", category: "income")
Transaction.create(account_id: 1, credit: nil, debit: '15.03', payee: "Five Guys", date: "03/05/15", category: "food")
Transaction.create(account_id: 1, credit: nil, debit: '642.00', payee: "Visa", date: "03/09/15", category: "debts")
Transaction.create(account_id: 1, credit: nil, debit: '92.54', payee: "RCN", date: "03/13/15", category: "utilities")
Transaction.create(account_id: 1, credit: nil, debit: '102.23', payee: "Giant Foods", date: "03/19/15", category: "food")
Transaction.create(account_id: 1, credit: nil, debit: '1893.03', payee: "Apple Computers", date: "03/21/15", category: "personal care")
Transaction.create(account_id: 1, credit: nil, debit: '11500.00', payee: "General Assembly WDI", date: "03/21/15", category: "debts")
Transaction.create(account_id: 1, credit: '15000.00', debit: nil, payee: "Google.inc", date: "04/01/15", category: "income")
Transaction.create(account_id: 1, credit: nil, debit: '50.00', payee: "WMATA", date: "04/02/15", category: "transportation")





