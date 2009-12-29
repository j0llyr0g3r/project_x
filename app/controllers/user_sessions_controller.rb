class UserSessionsController < ApplicationController

  before_filter :login_required, :only => :destroy
  before_filter :not_logged_in, :only => :create
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      if session[:redirect_controller] and session[:redirect_action]
        redirect_to_previous_page
      else
        redirect_to edit_user_path(:current)
      end
    else
      redirect_to join_welcome_path
    end
  end
  
  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    reset_session
    redirect_to root_url
  end
end
