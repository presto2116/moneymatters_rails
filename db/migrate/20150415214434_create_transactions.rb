class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float :credit
      t.float :debit
      t.string :payee
      t.string :date
      t.string :category
    end
  end
end
