class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :edit_user_path
  def current_user
    if user_auth_signed_in?
      return current_user_auth.authable
    end
  end
end
