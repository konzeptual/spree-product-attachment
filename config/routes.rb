# Put your extension routes here.

map.namespace :admin do |admin|
  admin.resources :products, :has_many => [:downloadables] 
end  
