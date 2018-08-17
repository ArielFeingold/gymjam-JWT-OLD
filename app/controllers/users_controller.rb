class UsersController < ApplicationController
  before_action :authenticate_user,  only: [:index, :current, :update]
  before_action :authorize_as_admin, only: [:destroy]
  before_action :authorize,          only: [:update]

  # Should work if the current_user is authenticated.
  def index
    render json: {status: 200, msg: 'Logged-in'}
  end

  def current
    current_user.update!(last_login: Time.now)
    render json: current_user
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def authorize
    return_unauthorized unless current_user && current_user.can_modify_user?(params[:id])
  end
end
