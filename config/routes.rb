ActionController::Routing::Routes.draw do |map|
  map.resources :user_sessions
  map.resources :users
  #map.resources :welcomes, :only => :index, :collection => {:join => :get}
  map.resource :welcome, :only => :show, :collection => {:join => :get}
  map.connect '', :controller => 'welcomes', :action => 'index'
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
end
