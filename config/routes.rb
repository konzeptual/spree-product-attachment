Rails.application.routes.draw do
  namespace :admin do
    resources :products do
      resources :downloadables
    end
  end  

  # Add your extension routes here
end
