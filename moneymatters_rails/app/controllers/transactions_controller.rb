class TransactionsController < ApplicationController
before_action :find_account, only: [:new, :create, :edit, :update, :destroy]

	def new
		@transaction = Transaction.new
	end

	def create
		@transaction = @account.transactions.new( transaction_params )
		if @transaction.save
			redirect_to @account
		else
			render :new
		end
	end

	def edit
		@transaction = Transaction.find( params[:id])
	end

	def update
		@transaction = @account.transactions.find(params[:id])
		if @transaction.update(transaction_params)
			redirect_to @account
		else
			render :edit
		end
	end
	
	def destroy
		@transaction = @account.transactions.find(params[:id])
		@transaction.destroy
		redirect_to account_path(@account)
	end

	private
		def transaction_params
			params.require(:transaction).permit(:credit, :debit, :payee, :date, :category)
		end

		def find_account
			@account = Account.find( params[:account_id] )
		end
end
