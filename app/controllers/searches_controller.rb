class SearchesController < ApplicationController

  skip_before_filter :login_required

  def new
    render
  end

  def show
    @ideas = Idea.fetch(params[:search])
    if @ideas.blank?
      render :new
    else
      render
    end
  end
end
