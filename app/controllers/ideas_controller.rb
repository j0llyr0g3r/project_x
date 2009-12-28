class IdeasController < ApplicationController

  before_filter :login_required, :except => [:index, :show, :random]

  def index
    if(params[:user_id])
      @ideas = current_user.leaderships
    else
      @ideas = Idea.find(:all, :order => "created_at DESC", :limit => DISPLAY_LIMIT)
    end
  end
  
  def show
    @idea = Idea.find(params[:id])
  end
  
  def new
    @idea = Idea.new
  end
  
  def create
    @idea = current_user.leaderships.create(params[:idea])
    if @idea.valid?
      flash[:notice] = "Successfully created idea."
      redirect_to @idea
    else
      $cust_log.debug('Saving of idea failed: ' + @idea.error.inspect)
      render :action => 'new'
    end
  end
  
  def edit
    @idea = Idea.find(params[:id])
  end
  
  def update
    @idea = Idea.find(params[:id])
    if @idea.update_attributes(params[:idea])
      flash[:notice] = "Successfully updated idea."
      redirect_to @idea
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy
    flash[:notice] = "Successfully destroyed idea."
    redirect_to ideas_url
  end

  def random
    @ideas = Idea.random
  end
end

