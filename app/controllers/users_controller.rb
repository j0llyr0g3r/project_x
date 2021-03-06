class UsersController < ApplicationController

  before_filter :login_required, :only => [:edit, :update]
  before_filter :not_logged_in, :only => :create

  def create
    @user = User.new(params[:user])
    if @user.save
      if session[:redirect_controller] and session[:redirect_action]
        redirect_to_previous_page
      else
        redirect_to edit_user_path(:current)
      end
    else
      $cust_log.debug('Saving failed:' + @user.errors.inspect)
      redirect_to join_welcome_path
    end
  end
  
  def edit
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated user."
    end
    render :action => 'edit'
  end
end
