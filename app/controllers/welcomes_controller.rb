class WelcomesController < ApplicationController

  skip_before_filter :login_required

  def show
    render :show#, :layout => false
  end

  def join
    @user = User.new
    @user_session = UserSession.new
  end

end
