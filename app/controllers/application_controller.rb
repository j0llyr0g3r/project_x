
class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  filter_parameter_logging :password
  helper_method :current_user, :root_url

  #prepend_before_filter :set_user_language, :activate_authlogic

  protected

  def redirect_to_previous_page
    # if we were redirected from a page which requires a logged in user,
    # redirect back to that page on succesfull user-creation (== login)
    redirect_to :controller => session[:redirect_controller], :action => session[:redirect_action]
    session[:redirect_controller] = nil
    session[:redirect_action] = nil
  end

  def root_url
    '/'
  end

  def redirect_to_back
    request.env["HTTP_REFERER"].blank? ? (redirect_to root_url) : (redirect_to :back)
  end

  def login_required
    if !current_user
      session[:redirect_controller] = params[:controller]
      session[:redirect_action] = params[:action]
      redirect_to join_welcome_path
    end
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

#  private

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end

end
