class ApplicationController < ActionController::API
  before_action :authenticate_request

  attr_reader :current_account

  private

  def authenticate_request
    token = request.headers['Authorization']&.split(' ')&.last

    decoded = JwtService.decode(token)
    @current_account = Account.find(decoded[:account_id]) if decoded

    render json: { error: "Unauthorized" }, status: :unauthorized unless @current_account
  end
end