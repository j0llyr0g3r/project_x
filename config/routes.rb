ActionController::Routing::Routes.draw do |map|
  map.resources :ideas

  map.resources :user_sessions
  map.resources :users do |user|
    user.resources :ideas, :only => :index
  end
  #map.resources :welcomes, :only => :index, :collection => {:join => :get}
  map.resource :welcome, :only => :show, :collection => {:join => :get}
  map.resource :search, :only => :show
  map.connect '', :controller => 'welcomes', :action => 'show'
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
end
