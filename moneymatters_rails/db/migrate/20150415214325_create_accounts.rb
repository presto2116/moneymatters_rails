class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
    	t.belongs_to :user
      t.string :name
      t.string :bank
      t.integer :account_number
      t.float :balance
    end
  end
end
