Rails.application.routes.draw do
  get 'main/index'
  
  resource :metrics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'main#index'
end
