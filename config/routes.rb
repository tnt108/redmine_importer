if Rails::VERSION::MAJOR >= 3
  RedmineApp::Application.routes.draw do
    match '/importer', :to => 'importer#index', :via => [:get, :post]
  end
end
