class SearchesController < ApplicationController

  skip_before_filter :login_required

  def show
    if(params[:random])
      @ideas = Idea.random
    else
      @ideas = Idea.find(:all, :order => "created_at DESC")
    end
  end
end
