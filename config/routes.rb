ActionController::Routing::Routes.draw do |map|
  map.connect '/importer/index', :controller => 'importer', :action => 'index'
  map.connect '/importer/match', :controller => 'importer', :action => 'match'
end
