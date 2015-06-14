class UsersController < ApplicationController
  before_action :auth_user, only: [:profile]

  def profile
    render 'users/profile'
  end

  private
  def auth_user
    redirect_to new_user_session_path unless user_signed_in? || current_user.try(:admin?)
  end
end