class AddAccountIDtoTransactions < ActiveRecord::Migration
  def up
  	change_table :transactions do |t|
  		t.integer :account_id
  	end
  end
end
