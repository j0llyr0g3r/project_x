class WelcomesController < ApplicationController
  def show
    render
  end

  def join
    @user = User.new
    @user_session = UserSession.new
  end

end
