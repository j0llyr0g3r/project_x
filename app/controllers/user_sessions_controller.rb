class UserSessionsController < ApplicationController

  before_filter :login_required, :only => :destroy
  before_filter :not_logged_in, :only => [:new, :create]

  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      redirect_to edit_user_path(:current)
    else
      $cust_log.debug("Creating user session failed: #{@user_session.errors}")
      redirect_to join_welcome_path
    end
  end
  
  def destroy
    $cust_log.debug('boom')
    @user_session = UserSession.find
    @user_session.destroy
    reset_session
    redirect_to root_url
  end
end
