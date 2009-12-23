# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  filter_parameter_logging :password
  helper_method :current_user, :root_url

  prepend_before_filter :activate_authlogic, :login_required, :set_user_language

  def root_url
    '/'
  end

  def redirect_to_back
    request.env["HTTP_REFERER"].blank? ? (redirect_to root_url) : (redirect_to :back)
  end

  # before-filters

  protected

  def login_required
    redirect_to_back unless current_user
  end

  def set_user_language
    if session[:language].blank?
      I18n.locale = 'en'
      session[:language] = 'en'
    else
      I18n.locale = session[:language]
    end
  end

  def not_logged_in
    redirect_to welcome_path if current_user
  end

  private

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end

end
