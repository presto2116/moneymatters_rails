class AccountsController < ApplicationController
	before_action :authenticate_user!
	before_action :find_account, only: [:show, :edit, :update, :destroy]

	def index
		@accounts = Account.all.order("id ASC")
	end

	def show
		@transaction = @account.transactions.all
	end

	def new
		@account = Account.new
	end

	def create
		@account = Account.new (account_params)
		if @account.save
			redirect_to @account
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @account.update( account_params )
		redirect_to @account
		else
			render :edit
		end
	end

	def destroy
		@account.destroy
		redirect_to accounts_path
	end

	private

		def account_params
			params.require(:account).permit(:name, :bank, :account_number, :balance)
		end
		def find_account
			@account = Account.find( params[:id] )
		end

end
