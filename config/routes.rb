if Rails::VERSION::MAJOR >= 3
  RedmineApp::Application.routes.draw do
    match '/importer/index', :to => 'importer#index', :via => [:get, :post]
    match '/importer/index', :to => 'importer#match', :via => [:get, :post]
    match '/importer/index', :to => 'importer#result', :via => [:get, :post]
  end
else
  ActionController::Routing::Routes.draw do |map|
    map.connect '/importer/index', :controller => 'importer', :action => 'index'
    map.connect '/importer/match', :controller => 'importer', :action => 'match'
    map.connect '/importer/result', :controller => 'importer', :action => 'result'
  end
end
