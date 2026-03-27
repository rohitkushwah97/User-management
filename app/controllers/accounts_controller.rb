class AccountsController < ApplicationController
	skip_before_action :authenticate_request, only: [:create]
	
	def create
		account = Account.new(account_params)
		if account.save
			render json: account, status: :ok
		else
			render json: { error: account.errors.full_messages }, status: :unprocessable_entity
		end
	end

	private

	def account_params
		params.permit(:name,:email,:age,:phone_number,:activated,:department,:designation,:joinig_date,:status,:type,:password)
	end
end

		