class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :require_log_in, :logged_in?

  def login!
    session[:session_token] = current_user[session: session[:session_token]]
  end

  def current_user
    @current_user ||= User.find_by(session[:session_token])
  end

  def logout!
    current_user.reset_session_token!
    session[:session_token] = nil
  end

  def logged_in?
    !!current_user
  end

  def require_log_in
    redirect_to new_session_url unless logged_in?
  end


end
