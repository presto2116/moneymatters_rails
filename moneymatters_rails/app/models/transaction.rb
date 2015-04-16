class Transaction < ActiveRecord::Base
	belongs_to :account
	validates  :payee,  :date, :category, :presence => true
end