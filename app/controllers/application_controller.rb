class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  add_flash_types :success, :warning, :danger, :info
  before_action :authenticate_user!
  before_action :authorize_as_admin!

  def authorize_as_admin!
    flash[:danger] = "Login as an admin user!!!!!"
    redirect_to root_path unless !current_user.nil? && current_user.admin?
  end
end
