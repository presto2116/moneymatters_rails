class Account < ActiveRecord::Base
	has_many :transactions
	validates :name, :bank, :account_number, :balance, :presence => true
	validates :account_number, :numericality => true
end