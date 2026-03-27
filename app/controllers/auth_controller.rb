class AuthController < ApplicationController
  skip_before_action :authenticate_request, only: [:login]

  def login
    account = Account.find_by(email: params[:username])

    if account&.authenticate(params[:password])
      token = JwtService.encode(account_id: account.id)
      render json: { token: token }
    else
      render json: { error: "Invalid credentials" }, status: :unauthorized
    end
  end

  private

  def account_params
    params.permit(:name, :username, :password)
  end
end