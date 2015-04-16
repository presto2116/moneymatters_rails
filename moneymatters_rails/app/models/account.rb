class Account < ActiveRecord::Base
	belongs_to :user
	has_many :transactions
	validates :name, :bank, :account_number, :balance, :presence => true
	validates :account_number, :numericality => true
end